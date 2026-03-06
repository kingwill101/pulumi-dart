// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProvisionedProductParameter {
  /// The name of the parameter defined in the template.
  final pulumi.Input<String>? parameterKey;
  /// The Template parameter value entered by the user.
  final pulumi.Input<String>? parameterValue;

  /// Creates a new [ProvisionedProductParameter].
  /// [parameterKey] The name of the parameter defined in the template.
  /// [parameterValue] The Template parameter value entered by the user.
  const ProvisionedProductParameter({
    this.parameterKey,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': ?parameterKey,
      'parameterValue': ?parameterValue,
    };
  }

  factory ProvisionedProductParameter.fromMap(Map<String, dynamic> map) {
    return ProvisionedProductParameter(
      parameterKey: (() { final guardedValue = map['parameterKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterValue: (() { final guardedValue = map['parameterValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

