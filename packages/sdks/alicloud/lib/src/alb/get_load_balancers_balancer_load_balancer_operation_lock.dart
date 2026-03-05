// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersBalancerLoadBalancerOperationLock {
  /// The Locking of the Reasons.
  final pulumi.Input<String> lockReason;
  /// The Locking of the Type.
  final pulumi.Input<String> lockType;

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
      lockReason: pulumi.Input.fromValue(map['lockReason'] as String),
      lockType: pulumi.Input.fromValue(map['lockType'] as String),
    );
  }
}

