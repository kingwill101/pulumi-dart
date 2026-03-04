// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersBalancerModificationProtectionConfig {
  /// The reason for modification protection.
  final pulumi.Input<String> reason;

  /// The load balancer status. Valid values: `Active`, `Configuring`, `CreateFailed`, `Inactive` and `Provisioning`.
  final pulumi.Input<String> status;

  /// Creates a new [GetLoadBalancersBalancerModificationProtectionConfig].
  /// [reason] The reason for modification protection.
  /// [status] The load balancer status. Valid values: `Active`, `Configuring`, `CreateFailed`, `Inactive` and `Provisioning`.
  GetLoadBalancersBalancerModificationProtectionConfig({
    required this.reason,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'reason': reason, 'status': status};
  }

  factory GetLoadBalancersBalancerModificationProtectionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLoadBalancersBalancerModificationProtectionConfig(
      reason: pulumi.Input.fromValue(map['reason'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
