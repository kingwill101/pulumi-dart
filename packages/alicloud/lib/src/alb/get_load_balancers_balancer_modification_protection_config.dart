// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersBalancerModificationProtectionConfig {
  /// The reason for modification protection.
  final String reason;
  /// The load balancer status. Valid values: `Active`, `Configuring`, `CreateFailed`, `Inactive` and `Provisioning`.
  final String status;

  /// Creates a new [GetLoadBalancersBalancerModificationProtectionConfig].
  /// [reason] The reason for modification protection.
  /// [status] The load balancer status. Valid values: `Active`, `Configuring`, `CreateFailed`, `Inactive` and `Provisioning`.
  GetLoadBalancersBalancerModificationProtectionConfig({
    required this.reason,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': reason,
      'status': status,
    };
  }

  factory GetLoadBalancersBalancerModificationProtectionConfig.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerModificationProtectionConfig(
      reason: map['reason'] as String,
      status: map['status'] as String,
    );
  }
}

