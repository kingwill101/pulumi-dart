// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getScanConfig.
class GetScanConfigWebsecurityscannerV1betaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scanConfigId;

  GetScanConfigWebsecurityscannerV1betaArgs({
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

  factory GetScanConfigWebsecurityscannerV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetScanConfigWebsecurityscannerV1betaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      scanConfigId: pulumi.Input.asInput<String>(map['scanConfigId']),
    );
  }
}
