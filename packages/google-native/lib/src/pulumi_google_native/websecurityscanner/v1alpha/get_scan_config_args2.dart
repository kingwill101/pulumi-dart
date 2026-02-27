// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getScanConfig.
class GetScanConfigArgs2 {
  final Input<String>? project;
  final Input<String> scanConfigId;

  GetScanConfigArgs2({
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

  factory GetScanConfigArgs2.fromMap(Map<String, dynamic> map) {
    return GetScanConfigArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      scanConfigId: Input.asInput<String>(map['scanConfigId']),
    );
  }
}
