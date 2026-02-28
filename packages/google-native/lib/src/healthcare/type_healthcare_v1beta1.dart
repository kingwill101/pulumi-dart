// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_healthcare_v1beta1.dart';
import 'type_primitive_healthcare_v1beta1.dart';

/// A type definition for some HL7v2 type (incl. Segments and Datatypes).
class TypeHealthcareV1beta1 {
  /// The (sub) fields this type has (if not primitive).
  final List<FieldHealthcareV1beta1>? fields;

  /// The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  final String? name;

  /// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  final TypePrimitiveHealthcareV1beta1? primitive;

  /// Creates a new [TypeHealthcareV1beta1].
  /// [fields] The (sub) fields this type has (if not primitive).
  /// [name] The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  /// [primitive] If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  TypeHealthcareV1beta1({
    this.fields,
    this.name,
    this.primitive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] =
          pulumi.Input.encodeList<FieldHealthcareV1beta1, Map<String, dynamic>>(
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

  factory TypeHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return TypeHealthcareV1beta1(
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<FieldHealthcareV1beta1>(
              map['fields'],
              (value) => FieldHealthcareV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      primitive: map['primitive'] == null
          ? null
          : TypePrimitiveHealthcareV1beta1.fromValue(
              map['primitive'] as String),
    );
  }
}
