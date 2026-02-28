// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_websecurityscanner_v1_get_scan_config_args_doc}
/// Arguments for getScanConfig.
/// {@endtemplate}
/// {@macro pulumi_websecurityscanner_v1_get_scan_config_args_doc}
class GetScanConfigArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scanConfigId;

  /// Creates a new [GetScanConfigArgs].
  /// [project] Optional.
  /// [scanConfigId] Required.
  GetScanConfigArgs({
    String? project,
    required String scanConfigId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      scanConfigId = pulumi.Input.asInput<String>(scanConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'scanConfigId': scanConfigId,
    };
  }

  factory GetScanConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetScanConfigArgs(
      project: map['project'] == null ? null : map['project'] as String,
      scanConfigId: map['scanConfigId'] as String,
    );
  }
}

