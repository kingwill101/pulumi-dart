// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_desktop_types_get_desktop_types_args_doc}
/// Arguments for getDesktopTypes.
/// {@endtemplate}
/// {@macro pulumi_eds_get_desktop_types_get_desktop_types_args_doc}
class GetDesktopTypesArgs {
  /// The CPU cores.
  final pulumi.Input<int>? cpuCount;
  /// The GPU cores.
  final pulumi.Input<double>? gpuCount;
  /// A list of Desktop Type IDs.
  final pulumi.Input<List<String>>? ids;
  /// The Specification family. Valid values: `eds.graphics`, `eds.hf`, `eds.general`, `ecd.graphics`, `ecd.performance`, `ecd.advanced`, `ecd.basic`.
  final pulumi.Input<String>? instanceTypeFamily;
  /// The Memory size. Unit: MiB.
  final pulumi.Input<int>? memorySize;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `SUFFICIENT`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetDesktopTypesArgs].
  /// [cpuCount] The CPU cores.
  /// [gpuCount] The GPU cores.
  /// [ids] A list of Desktop Type IDs.
  /// [instanceTypeFamily] The Specification family. Valid values: `eds.graphics`, `eds.hf`, `eds.general`, `ecd.graphics`, `ecd.performance`, `ecd.advanced`, `ecd.basic`.
  /// [memorySize] The Memory size. Unit: MiB.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `SUFFICIENT`.
  GetDesktopTypesArgs({
    this.cpuCount,
    this.gpuCount,
    this.ids,
    this.instanceTypeFamily,
    this.memorySize,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': ?cpuCount,
      'gpuCount': ?gpuCount,
      'ids': ?ids,
      'instanceTypeFamily': ?instanceTypeFamily,
      'memorySize': ?memorySize,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetDesktopTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetDesktopTypesArgs(
      cpuCount: map['cpuCount'] == null ? null : (map['cpuCount']! as int).input(),
      gpuCount: map['gpuCount'] == null ? null : (map['gpuCount']! as double).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceTypeFamily: map['instanceTypeFamily'] == null ? null : (map['instanceTypeFamily']! as String).input(),
      memorySize: map['memorySize'] == null ? null : (map['memorySize']! as int).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

