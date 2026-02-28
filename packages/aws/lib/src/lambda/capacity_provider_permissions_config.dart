// ignore_for_file: unused_element, unnecessary_cast

class CapacityProviderPermissionsConfig {
  /// The ARN of the IAM role that allows Lambda to manage the Capacity Provider.
  final String capacityProviderOperatorRoleArn;

  /// Creates a new [CapacityProviderPermissionsConfig].
  /// [capacityProviderOperatorRoleArn] The ARN of the IAM role that allows Lambda to manage the Capacity Provider.
  CapacityProviderPermissionsConfig({
    required this.capacityProviderOperatorRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityProviderOperatorRoleArn'] = capacityProviderOperatorRoleArn;
    return map;
  }

  factory CapacityProviderPermissionsConfig.fromMap(Map<String, dynamic> map) {
    return CapacityProviderPermissionsConfig(
      capacityProviderOperatorRoleArn:
          map['capacityProviderOperatorRoleArn'] as String,
    );
  }
}
