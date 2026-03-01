// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerModificationProtectionConfig {
  /// Managed Instance
  final String? reason;
  /// Load Balancing Modify the Protection Status
  final String? status;

  /// Creates a new [LoadBalancerModificationProtectionConfig].
  /// [reason] Managed Instance
  /// [status] Load Balancing Modify the Protection Status
  LoadBalancerModificationProtectionConfig({
    this.reason,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': ?reason,
      'status': ?status,
    };
  }

  factory LoadBalancerModificationProtectionConfig.fromMap(Map<String, dynamic> map) {
    return LoadBalancerModificationProtectionConfig(
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

