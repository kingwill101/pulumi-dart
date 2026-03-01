// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersBalancerLoadBalancerOperationLock {
  /// The Locking of the Reasons.
  final String lockReason;
  /// The Locking of the Type.
  final String lockType;

  /// Creates a new [GetLoadBalancersBalancerLoadBalancerOperationLock].
  /// [lockReason] The Locking of the Reasons.
  /// [lockType] The Locking of the Type.
  GetLoadBalancersBalancerLoadBalancerOperationLock({
    required this.lockReason,
    required this.lockType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockReason': lockReason,
      'lockType': lockType,
    };
  }

  factory GetLoadBalancersBalancerLoadBalancerOperationLock.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerLoadBalancerOperationLock(
      lockReason: map['lockReason'] as String,
      lockType: map['lockType'] as String,
    );
  }
}

