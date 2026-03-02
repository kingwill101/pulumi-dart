// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_simpleapplicationserver_get_server_plans_get_server_plans_args_doc}
/// Arguments for getServerPlans.
/// {@endtemplate}
/// {@macro pulumi_simpleapplicationserver_get_server_plans_get_server_plans_args_doc}
class GetServerPlansArgs {
  /// The peak bandwidth. Unit: Mbit/s.
  final pulumi.Input<int>? bandwidth;
  /// The number of CPU cores.
  final pulumi.Input<int>? core;
  /// The size of the enhanced SSD (ESSD). Unit: GB.
  final pulumi.Input<int>? diskSize;
  /// The monthly data transfer quota. Unit: GB.
  final pulumi.Input<int>? flow;
  /// A list of Instance Plan IDs.
  final pulumi.Input<List<String>>? ids;
  /// The memory size. Unit: GB.
  final pulumi.Input<double>? memory;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The platform of Plan supported. Valid values: ["Linux", "Windows"].
  final pulumi.Input<String>? platform;

  /// Creates a new [GetServerPlansArgs].
  /// [bandwidth] The peak bandwidth. Unit: Mbit/s.
  /// [core] The number of CPU cores.
  /// [diskSize] The size of the enhanced SSD (ESSD). Unit: GB.
  /// [flow] The monthly data transfer quota. Unit: GB.
  /// [ids] A list of Instance Plan IDs.
  /// [memory] The memory size. Unit: GB.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [platform] The platform of Plan supported. Valid values: ["Linux", "Windows"].
  GetServerPlansArgs({
    this.bandwidth,
    this.core,
    this.diskSize,
    this.flow,
    this.ids,
    this.memory,
    this.outputFile,
    this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'core': ?core,
      'diskSize': ?diskSize,
      'flow': ?flow,
      'ids': ?ids,
      'memory': ?memory,
      'outputFile': ?outputFile,
      'platform': ?platform,
    };
  }

  factory GetServerPlansArgs.fromMap(Map<String, dynamic> map) {
    return GetServerPlansArgs(
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth']! as int).input(),
      core: map['core'] == null ? null : (map['core']! as int).input(),
      diskSize: map['diskSize'] == null ? null : (map['diskSize']! as int).input(),
      flow: map['flow'] == null ? null : (map['flow']! as int).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      memory: map['memory'] == null ? null : (map['memory']! as double).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      platform: map['platform'] == null ? null : (map['platform']! as String).input(),
    );
  }
}

