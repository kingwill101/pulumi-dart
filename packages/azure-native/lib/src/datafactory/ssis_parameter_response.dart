// ignore_for_file: unused_element, unnecessary_cast


/// Ssis parameter.
class SsisParameterResponse {
  /// Parameter type.
  final String? dataType;
  /// Default value of parameter.
  final String? defaultValue;
  /// Parameter description.
  final String? description;
  /// Design default value of parameter.
  final String? designDefaultValue;
  /// Parameter id.
  final double? id;
  /// Parameter name.
  final String? name;
  /// Whether parameter is required.
  final bool? required;
  /// Whether parameter is sensitive.
  final bool? sensitive;
  /// Default sensitive value of parameter.
  final String? sensitiveDefaultValue;
  /// Parameter value set.
  final bool? valueSet;
  /// Parameter value type.
  final String? valueType;
  /// Parameter reference variable.
  final String? variable;

  /// Creates a new [SsisParameterResponse].
  /// [dataType] Parameter type.
  /// [defaultValue] Default value of parameter.
  /// [description] Parameter description.
  /// [designDefaultValue] Design default value of parameter.
  /// [id] Parameter id.
  /// [name] Parameter name.
  /// [required] Whether parameter is required.
  /// [sensitive] Whether parameter is sensitive.
  /// [sensitiveDefaultValue] Default sensitive value of parameter.
  /// [valueSet] Parameter value set.
  /// [valueType] Parameter value type.
  /// [variable] Parameter reference variable.
  SsisParameterResponse({
    this.dataType,
    this.defaultValue,
    this.description,
    this.designDefaultValue,
    this.id,
    this.name,
    this.required,
    this.sensitive,
    this.sensitiveDefaultValue,
    this.valueSet,
    this.valueType,
    this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'defaultValue': ?defaultValue,
      'description': ?description,
      'designDefaultValue': ?designDefaultValue,
      'id': ?id,
      'name': ?name,
      'required': ?required,
      'sensitive': ?sensitive,
      'sensitiveDefaultValue': ?sensitiveDefaultValue,
      'valueSet': ?valueSet,
      'valueType': ?valueType,
      'variable': ?variable,
    };
  }

  factory SsisParameterResponse.fromMap(Map<String, dynamic> map) {
    return SsisParameterResponse(
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      designDefaultValue: map['designDefaultValue'] == null ? null : map['designDefaultValue'] as String,
      id: map['id'] == null ? null : map['id'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
      sensitive: map['sensitive'] == null ? null : map['sensitive'] as bool,
      sensitiveDefaultValue: map['sensitiveDefaultValue'] == null ? null : map['sensitiveDefaultValue'] as String,
      valueSet: map['valueSet'] == null ? null : map['valueSet'] as bool,
      valueType: map['valueType'] == null ? null : map['valueType'] as String,
      variable: map['variable'] == null ? null : map['variable'] as String,
    );
  }
}

