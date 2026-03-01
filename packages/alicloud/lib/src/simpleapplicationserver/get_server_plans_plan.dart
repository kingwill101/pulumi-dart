// ignore_for_file: unused_element, unnecessary_cast


class GetServerPlansPlan {
  /// The peak bandwidth. Unit: Mbit/s.
  final int bandwidth;
  /// The number of CPU cores.
  final int core;
  /// The size of the enhanced SSD (ESSD). Unit: GB.
  final int diskSize;
  /// The monthly data transfer quota. Unit: GB.
  final int flow;
  /// The ID of the Instance Plan.
  final String id;
  /// The memory size. Unit: GB.
  final double memory;
  /// The ID of the Instance Plan.
  final String planId;
  /// The platform of Plan supported.
  final String supportPlatform;

  /// Creates a new [GetServerPlansPlan].
  /// [bandwidth] The peak bandwidth. Unit: Mbit/s.
  /// [core] The number of CPU cores.
  /// [diskSize] The size of the enhanced SSD (ESSD). Unit: GB.
  /// [flow] The monthly data transfer quota. Unit: GB.
  /// [id] The ID of the Instance Plan.
  /// [memory] The memory size. Unit: GB.
  /// [planId] The ID of the Instance Plan.
  /// [supportPlatform] The platform of Plan supported.
  GetServerPlansPlan({
    required this.bandwidth,
    required this.core,
    required this.diskSize,
    required this.flow,
    required this.id,
    required this.memory,
    required this.planId,
    required this.supportPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'core': core,
      'diskSize': diskSize,
      'flow': flow,
      'id': id,
      'memory': memory,
      'planId': planId,
      'supportPlatform': supportPlatform,
    };
  }

  factory GetServerPlansPlan.fromMap(Map<String, dynamic> map) {
    return GetServerPlansPlan(
      bandwidth: map['bandwidth'] as int,
      core: map['core'] as int,
      diskSize: map['diskSize'] as int,
      flow: map['flow'] as int,
      id: map['id'] as String,
      memory: map['memory'] as double,
      planId: map['planId'] as String,
      supportPlatform: map['supportPlatform'] as String,
    );
  }
}

