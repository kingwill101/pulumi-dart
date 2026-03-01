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
    pulumi.Output<int>? cpuCount,
    pulumi.Output<double>? gpuCount,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceTypeFamily,
    pulumi.Output<int>? memorySize,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      cpuCount = pulumi.Input.asOptionalInput<int>(cpuCount),
      gpuCount = pulumi.Input.asOptionalInput<double>(gpuCount),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceTypeFamily = pulumi.Input.asOptionalInput<String>(instanceTypeFamily),
      memorySize = pulumi.Input.asOptionalInput<int>(memorySize),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      cpuCount: map['cpuCount'] == null ? null : pulumi.Output.create<int>(map['cpuCount'] as int),
      gpuCount: map['gpuCount'] == null ? null : pulumi.Output.create<double>(map['gpuCount'] as double),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceTypeFamily: map['instanceTypeFamily'] == null ? null : pulumi.Output.create<String>(map['instanceTypeFamily'] as String),
      memorySize: map['memorySize'] == null ? null : pulumi.Output.create<int>(map['memorySize'] as int),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

