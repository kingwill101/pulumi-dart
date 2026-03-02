// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerPlansPlan {
  /// The peak bandwidth. Unit: Mbit/s.
  final pulumi.Input<int> bandwidth;
  /// The number of CPU cores.
  final pulumi.Input<int> core;
  /// The size of the enhanced SSD (ESSD). Unit: GB.
  final pulumi.Input<int> diskSize;
  /// The monthly data transfer quota. Unit: GB.
  final pulumi.Input<int> flow;
  /// The ID of the Instance Plan.
  final pulumi.Input<String> id;
  /// The memory size. Unit: GB.
  final pulumi.Input<double> memory;
  /// The ID of the Instance Plan.
  final pulumi.Input<String> planId;
  /// The platform of Plan supported.
  final pulumi.Input<String> supportPlatform;

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
      bandwidth: (map['bandwidth'] as int).input(),
      core: (map['core'] as int).input(),
      diskSize: (map['diskSize'] as int).input(),
      flow: (map['flow'] as int).input(),
      id: (map['id'] as String).input(),
      memory: (map['memory'] as double).input(),
      planId: (map['planId'] as String).input(),
      supportPlatform: (map['supportPlatform'] as String).input(),
    );
  }
}

