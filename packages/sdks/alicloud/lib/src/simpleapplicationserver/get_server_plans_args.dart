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
  const GetServerPlansArgs({
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
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      core: (() { final guardedValue = map['core']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskSize: (() { final guardedValue = map['diskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      flow: (() { final guardedValue = map['flow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

