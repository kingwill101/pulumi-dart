// ignore_for_file: unused_element, unnecessary_cast


/// Properties of an Azure Resource Manager template parameter.
class ArmTemplateParameterProperties {
  /// The name of the template parameter.
  final String? name;
  /// The value of the template parameter.
  final String? value;

  /// Creates a new [ArmTemplateParameterProperties].
  /// [name] The name of the template parameter.
  /// [value] The value of the template parameter.
  ArmTemplateParameterProperties({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ArmTemplateParameterProperties.fromMap(Map<String, dynamic> map) {
    return ArmTemplateParameterProperties(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

