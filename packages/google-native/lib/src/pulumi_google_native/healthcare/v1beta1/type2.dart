// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'field2.dart';
import 'type_primitive2.dart';

/// A type definition for some HL7v2 type (incl. Segments and Datatypes).
class Type2 {
  /// The (sub) fields this type has (if not primitive).
  final List<Field2>? fields;

  /// The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  final String? name;

  /// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  final TypePrimitive2? primitive;

  Type2({
    this.fields,
    this.name,
    this.primitive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = Input.encodeList<Field2, Map<String, dynamic>>(
          fieldsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final primitiveValue = primitive;
    if (primitiveValue != null) {
      map['primitive'] = primitiveValue.value;
    }
    return map;
  }

  factory Type2.fromMap(Map<String, dynamic> map) {
    return Type2(
      fields: map['fields'] == null
          ? null
          : Input.decodeList<Field2>(
              map['fields'],
              (value) =>
                  Field2.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      primitive: map['primitive'] == null
          ? null
          : TypePrimitive2.fromValue(map['primitive'] as String),
    );
  }
}
