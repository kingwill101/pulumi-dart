// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyConfigurationWafConfig {
  /// Conflict-resolution strategy. Valid values: `MERGE_WHERE_APPLICABLE`.
  final pulumi.Input<String> conflictResolution;
  /// How remediation is handled when a resource already has a customer-created web ACL. Valid values: `RETROFIT`, `OVERRIDE_ASSOCIATION`, `NO_REMEDIATION`.
  final pulumi.Input<String> existingCustomerWebAclResolution;

  /// Creates a new [PolicyConfigurationWafConfig].
  /// [conflictResolution] Conflict-resolution strategy. Valid values: `MERGE_WHERE_APPLICABLE`.
  /// [existingCustomerWebAclResolution] How remediation is handled when a resource already has a customer-created web ACL. Valid values: `RETROFIT`, `OVERRIDE_ASSOCIATION`, `NO_REMEDIATION`.
  const PolicyConfigurationWafConfig({
    required this.conflictResolution,
    required this.existingCustomerWebAclResolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflictResolution': conflictResolution,
      'existingCustomerWebAclResolution': existingCustomerWebAclResolution,
    };
  }

  factory PolicyConfigurationWafConfig.fromMap(Map<String, dynamic> map) {
    return PolicyConfigurationWafConfig(
      conflictResolution: pulumi.Input.fromValue(map['conflictResolution'] as String),
      existingCustomerWebAclResolution: pulumi.Input.fromValue(map['existingCustomerWebAclResolution'] as String),
    );
  }
}
