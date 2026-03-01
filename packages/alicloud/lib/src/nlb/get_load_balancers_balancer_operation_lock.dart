// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersBalancerOperationLock {
  /// The reason why the NLB instance is locked.
  final String lockReason;
  /// The type of lock.
  final String lockType;

  /// Creates a new [GetLoadBalancersBalancerOperationLock].
  /// [lockReason] The reason why the NLB instance is locked.
  /// [lockType] The type of lock.
  GetLoadBalancersBalancerOperationLock({
    required this.lockReason,
    required this.lockType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockReason': lockReason,
      'lockType': lockType,
    };
  }

  factory GetLoadBalancersBalancerOperationLock.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerOperationLock(
      lockReason: map['lockReason'] as String,
      lockType: map['lockType'] as String,
    );
  }
}

