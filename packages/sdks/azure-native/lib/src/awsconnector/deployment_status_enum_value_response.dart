// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DeploymentStatusEnumValue
class DeploymentStatusEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [DeploymentStatusEnumValueResponse].
  /// [value] Property value
  const DeploymentStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DeploymentStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStatusEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
