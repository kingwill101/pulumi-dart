// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'field_response.dart';

/// A type definition for some HL7v2 type (incl. Segments and Datatypes).
class TypeResponse {
  /// The (sub) fields this type has (if not primitive).
  final List<FieldResponse> fields;

  /// The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  final String name;

  /// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  final String primitive;

  TypeResponse({
    required this.fields,
    required this.name,
    required this.primitive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fields'] = Input.encodeList<FieldResponse, Map<String, dynamic>>(
        fields, (value) => value.toMap());
    map['name'] = name;
    map['primitive'] = primitive;
    return map;
  }

  factory TypeResponse.fromMap(Map<String, dynamic> map) {
    return TypeResponse(
      fields: Input.decodeList<FieldResponse>(
          map['fields'],
          (value) =>
              FieldResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      primitive: map['primitive'] as String,
    );
  }
}
