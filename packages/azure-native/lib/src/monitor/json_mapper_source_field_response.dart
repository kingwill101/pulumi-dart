// ignore_for_file: unused_element, unnecessary_cast


/// JsonArrayMapper source field used to describe the field from which the json array will be read.
class JsonMapperSourceFieldResponse {
  /// Define a source field name from which the json array mapper will read the json array. Leaving this empty, means reading the body of the message itself.
  final String? fieldName;

  /// Creates a new [JsonMapperSourceFieldResponse].
  /// [fieldName] Define a source field name from which the json array mapper will read the json array. Leaving this empty, means reading the body of the message itself.
  JsonMapperSourceFieldResponse({
    this.fieldName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldName': ?fieldName,
    };
  }

  factory JsonMapperSourceFieldResponse.fromMap(Map<String, dynamic> map) {
    return JsonMapperSourceFieldResponse(
      fieldName: map['fieldName'] == null ? null : map['fieldName'] as String,
    );
  }
}

