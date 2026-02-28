// ignore_for_file: unused_element, unnecessary_cast

class KxClusterScalingGroupConfiguration {
  /// The number of vCPUs that you want to reserve for each node of this kdb cluster on the scaling group host.
  final double? cpu;

  /// An optional hard limit on the amount of memory a kdb cluster can use.
  final int? memoryLimit;

  /// A reservation of the minimum amount of memory that should be available on the scaling group for a kdb cluster to be successfully placed in a scaling group.
  final int memoryReservation;

  /// The number of kdb cluster nodes.
  final int nodeCount;

  /// A unique identifier for the kdb scaling group.
  final String scalingGroupName;

  /// Creates a new [KxClusterScalingGroupConfiguration].
  /// [cpu] The number of vCPUs that you want to reserve for each node of this kdb cluster on the scaling group host.
  /// [memoryLimit] An optional hard limit on the amount of memory a kdb cluster can use.
  /// [memoryReservation] A reservation of the minimum amount of memory that should be available on the scaling group for a kdb cluster to be successfully placed in a scaling group.
  /// [nodeCount] The number of kdb cluster nodes.
  /// [scalingGroupName] A unique identifier for the kdb scaling group.
  KxClusterScalingGroupConfiguration({
    this.cpu,
    this.memoryLimit,
    required this.memoryReservation,
    required this.nodeCount,
    required this.scalingGroupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuValue = cpu;
    if (cpuValue != null) {
      map['cpu'] = cpuValue;
    }
    final memoryLimitValue = memoryLimit;
    if (memoryLimitValue != null) {
      map['memoryLimit'] = memoryLimitValue;
    }
    map['memoryReservation'] = memoryReservation;
    map['nodeCount'] = nodeCount;
    map['scalingGroupName'] = scalingGroupName;
    return map;
  }

  factory KxClusterScalingGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterScalingGroupConfiguration(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memoryLimit:
          map['memoryLimit'] == null ? null : map['memoryLimit'] as int,
      memoryReservation: map['memoryReservation'] as int,
      nodeCount: map['nodeCount'] as int,
      scalingGroupName: map['scalingGroupName'] as String,
    );
  }
}
