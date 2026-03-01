// ignore_for_file: unused_element, unnecessary_cast


/// Parameter to pass to ARM template
class ArmTemplateParameterResponse {
  /// name of the parameter.
  final String? name;
  /// value for the parameter. In Jtoken
  final String? value;

  /// Creates a new [ArmTemplateParameterResponse].
  /// [name] name of the parameter.
  /// [value] value for the parameter. In Jtoken
  ArmTemplateParameterResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ArmTemplateParameterResponse.fromMap(Map<String, dynamic> map) {
    return ArmTemplateParameterResponse(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

