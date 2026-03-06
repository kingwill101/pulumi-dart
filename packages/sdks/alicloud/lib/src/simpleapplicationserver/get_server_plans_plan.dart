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
  const GetServerPlansPlan({
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
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      core: pulumi.Input.fromValue(map['core'] as int),
      diskSize: pulumi.Input.fromValue(map['diskSize'] as int),
      flow: pulumi.Input.fromValue(map['flow'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as double),
      planId: pulumi.Input.fromValue(map['planId'] as String),
      supportPlatform: pulumi.Input.fromValue(map['supportPlatform'] as String),
    );
  }
}

