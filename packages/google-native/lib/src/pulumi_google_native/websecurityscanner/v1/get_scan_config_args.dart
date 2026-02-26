// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getScanConfig.
class GetScanConfigArgs {
  final Input<String>? project;
  final Input<String> scanConfigId;

  GetScanConfigArgs({
    this.project,
    required this.scanConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['scanConfigId'] = scanConfigId;
    return map;
  }

  factory GetScanConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetScanConfigArgs(
      project: Input.asOptionalInput<String>(map['project']),
      scanConfigId: Input.asInput<String>(map['scanConfigId']),
    );
  }
}
