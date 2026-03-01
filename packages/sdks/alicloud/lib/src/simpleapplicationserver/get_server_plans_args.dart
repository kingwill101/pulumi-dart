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
    pulumi.Output<int>? bandwidth,
    pulumi.Output<int>? core,
    pulumi.Output<int>? diskSize,
    pulumi.Output<int>? flow,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<double>? memory,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? platform,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      core = pulumi.Input.asOptionalInput<int>(core),
      diskSize = pulumi.Input.asOptionalInput<int>(diskSize),
      flow = pulumi.Input.asOptionalInput<int>(flow),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      memory = pulumi.Input.asOptionalInput<double>(memory),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      platform = pulumi.Input.asOptionalInput<String>(platform);

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
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      core: map['core'] == null ? null : pulumi.Output.create<int>(map['core'] as int),
      diskSize: map['diskSize'] == null ? null : pulumi.Output.create<int>(map['diskSize'] as int),
      flow: map['flow'] == null ? null : pulumi.Output.create<int>(map['flow'] as int),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      memory: map['memory'] == null ? null : pulumi.Output.create<double>(map['memory'] as double),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
    );
  }
}

