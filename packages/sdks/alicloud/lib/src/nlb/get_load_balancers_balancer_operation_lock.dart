// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersBalancerOperationLock {
  /// The reason why the NLB instance is locked.
  final pulumi.Input<String> lockReason;
  /// The type of lock.
  final pulumi.Input<String> lockType;

  /// Creates a new [GetLoadBalancersBalancerOperationLock].
  /// [lockReason] The reason why the NLB instance is locked.
  /// [lockType] The type of lock.
  const GetLoadBalancersBalancerOperationLock({
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
      lockReason: pulumi.Input.fromValue(map['lockReason'] as String),
      lockType: pulumi.Input.fromValue(map['lockType'] as String),
    );
  }
}

