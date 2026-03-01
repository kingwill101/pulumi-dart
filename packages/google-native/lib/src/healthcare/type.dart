// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [Type].
  /// [fields] The (sub) fields this type has (if not primitive).
  /// [name] The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  /// [primitive] If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  Type({this.fields, this.name, this.primitive});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?fields == null
          ? null
          : pulumi.Input.encodeList<Field, Map<String, dynamic>>(
              fields!,
              (value) => value.toMap(),
            ),
      'name': ?name,
      'primitive': ?primitive == null ? null : primitive!.value,
    };
  }

  factory Type.fromMap(Map<String, dynamic> map) {
    return Type(
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<Field>(
              map['fields'],
              (value) => Field.fromMap((value as Map).cast<String, dynamic>()),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      primitive: map['primitive'] == null
          ? null
          : TypePrimitive.fromValue(map['primitive'] as String),
    );
  }
}
