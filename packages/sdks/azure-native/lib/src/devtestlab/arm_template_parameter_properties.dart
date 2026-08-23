// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of an Azure Resource Manager template parameter.
class ArmTemplateParameterProperties {
  /// The name of the template parameter.
  final pulumi.Input<String>? name;
  /// The value of the template parameter.
  final pulumi.Input<String>? value;

  /// Creates a new [ArmTemplateParameterProperties].
  /// [name] The name of the template parameter.
  /// [value] The value of the template parameter.
  const ArmTemplateParameterProperties({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
