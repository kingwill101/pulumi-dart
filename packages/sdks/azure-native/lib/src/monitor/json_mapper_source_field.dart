// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// JsonArrayMapper source field used to describe the field from which the json array will be read.
class JsonMapperSourceField {
  /// Define a source field name from which the json array mapper will read the json array. Leaving this empty, means reading the body of the message itself.
  final pulumi.Input<String>? fieldName;

  /// Creates a new [JsonMapperSourceField].
  /// [fieldName] Define a source field name from which the json array mapper will read the json array. Leaving this empty, means reading the body of the message itself.
  JsonMapperSourceField({
    this.fieldName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldName': ?fieldName,
    };
  }

  factory JsonMapperSourceField.fromMap(Map<String, dynamic> map) {
    return JsonMapperSourceField(
      fieldName: map['fieldName'] == null ? null : (map['fieldName'] as String).input(),
    );
  }
}

