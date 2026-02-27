// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'field.dart';
import 'type_primitive.dart';

/// A type definition for some HL7v2 type (incl. Segments and Datatypes).
class Type {
  /// The (sub) fields this type has (if not primitive).
  final List<Field>? fields;

  /// The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  final String? name;

  /// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  final TypePrimitive? primitive;

  Type({
    this.fields,
    this.name,
    this.primitive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = Input.encodeList<Field, Map<String, dynamic>>(
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

  factory Type.fromMap(Map<String, dynamic> map) {
    return Type(
      fields: map['fields'] == null
          ? null
          : Input.decodeList<Field>(map['fields'],
              (value) => Field.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      primitive: map['primitive'] == null
          ? null
          : TypePrimitive.fromValue(map['primitive'] as String),
    );
  }
}
