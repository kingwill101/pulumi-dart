// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxClusterScalingGroupConfiguration {
  /// Number of vCPUs that you want to reserve for each node of this kdb cluster on the scaling group host.
  final pulumi.Input<double>? cpu;
  /// Hard limit on the amount of memory a kdb cluster can use.
  final pulumi.Input<int>? memoryLimit;
  /// Reservation of the minimum amount of memory that should be available on the scaling group for a kdb cluster to be successfully placed in a scaling group.
  final pulumi.Input<int> memoryReservation;
  /// Number of kdb cluster nodes.
  final pulumi.Input<int> nodeCount;
  /// Unique identifier for the kdb scaling group.
  final pulumi.Input<String> scalingGroupName;

  /// Creates a new [KxClusterScalingGroupConfiguration].
  /// [cpu] Number of vCPUs that you want to reserve for each node of this kdb cluster on the scaling group host.
  /// [memoryLimit] Hard limit on the amount of memory a kdb cluster can use.
  /// [memoryReservation] Reservation of the minimum amount of memory that should be available on the scaling group for a kdb cluster to be successfully placed in a scaling group.
  /// [nodeCount] Number of kdb cluster nodes.
  /// [scalingGroupName] Unique identifier for the kdb scaling group.
  const KxClusterScalingGroupConfiguration({
    this.cpu,
    this.memoryLimit,
    required this.memoryReservation,
    required this.nodeCount,
    required this.scalingGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memoryLimit': ?memoryLimit,
      'memoryReservation': memoryReservation,
      'nodeCount': nodeCount,
      'scalingGroupName': scalingGroupName,
    };
  }

  factory KxClusterScalingGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterScalingGroupConfiguration(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      memoryLimit: (() { final guardedValue = map['memoryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memoryReservation: pulumi.Input.fromValue(map['memoryReservation'] as int),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      scalingGroupName: pulumi.Input.fromValue(map['scalingGroupName'] as String),
    );
  }
}
