// ignore_for_file: unused_element, unnecessary_cast


/// Ssis variable.
class SsisVariableResponse {
  /// Variable type.
  final String? dataType;
  /// Variable description.
  final String? description;
  /// Variable id.
  final double? id;
  /// Variable name.
  final String? name;
  /// Whether variable is sensitive.
  final bool? sensitive;
  /// Variable sensitive value.
  final String? sensitiveValue;
  /// Variable value.
  final String? value;

  /// Creates a new [SsisVariableResponse].
  /// [dataType] Variable type.
  /// [description] Variable description.
  /// [id] Variable id.
  /// [name] Variable name.
  /// [sensitive] Whether variable is sensitive.
  /// [sensitiveValue] Variable sensitive value.
  /// [value] Variable value.
  SsisVariableResponse({
    this.dataType,
    this.description,
    this.id,
    this.name,
    this.sensitive,
    this.sensitiveValue,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'sensitive': ?sensitive,
      'sensitiveValue': ?sensitiveValue,
      'value': ?value,
    };
  }

  factory SsisVariableResponse.fromMap(Map<String, dynamic> map) {
    return SsisVariableResponse(
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] == null ? null : map['id'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      sensitive: map['sensitive'] == null ? null : map['sensitive'] as bool,
      sensitiveValue: map['sensitiveValue'] == null ? null : map['sensitiveValue'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

