// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderPermissionsConfig {
  /// ARN of the IAM role that allows Lambda to manage the Capacity Provider.
  final pulumi.Input<String> capacityProviderOperatorRoleArn;

  /// Creates a new [CapacityProviderPermissionsConfig].
  /// [capacityProviderOperatorRoleArn] ARN of the IAM role that allows Lambda to manage the Capacity Provider.
  const CapacityProviderPermissionsConfig({
    required this.capacityProviderOperatorRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProviderOperatorRoleArn': capacityProviderOperatorRoleArn,
    };
  }

  factory CapacityProviderPermissionsConfig.fromMap(Map<String, dynamic> map) {
    return CapacityProviderPermissionsConfig(
      capacityProviderOperatorRoleArn: pulumi.Input.fromValue(map['capacityProviderOperatorRoleArn'] as String),
    );
  }
}
