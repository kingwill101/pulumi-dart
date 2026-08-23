// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of an Azure Resource Manager template parameter.
class ArmTemplateParameterPropertiesResponse {
  /// The name of the template parameter.
  final pulumi.Input<String>? name;
  /// The value of the template parameter.
  final pulumi.Input<String>? value;

  /// Creates a new [ArmTemplateParameterPropertiesResponse].
  /// [name] The name of the template parameter.
  /// [value] The value of the template parameter.
  const ArmTemplateParameterPropertiesResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ArmTemplateParameterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ArmTemplateParameterPropertiesResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
