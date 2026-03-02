// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DeploymentStatusEnumValue
class DeploymentStatusEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [DeploymentStatusEnumValue].
  /// [value] Property value
  DeploymentStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DeploymentStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return DeploymentStatusEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

