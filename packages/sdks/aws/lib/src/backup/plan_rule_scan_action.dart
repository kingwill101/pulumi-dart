// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanRuleScanAction {
  /// Malware scanner to use for the scan action. Currently only `GUARDDUTY` is supported.
  final pulumi.Input<String> malwareScanner;
  /// Scanning mode to use for the scan action. Valid values are `FULL_SCAN` and `INCREMENTAL_SCAN`.
  final pulumi.Input<String> scanMode;

  /// Creates a new [PlanRuleScanAction].
  /// [malwareScanner] Malware scanner to use for the scan action. Currently only `GUARDDUTY` is supported.
  /// [scanMode] Scanning mode to use for the scan action. Valid values are `FULL_SCAN` and `INCREMENTAL_SCAN`.
  PlanRuleScanAction({
    required this.malwareScanner,
    required this.scanMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'malwareScanner': malwareScanner,
      'scanMode': scanMode,
    };
  }

  factory PlanRuleScanAction.fromMap(Map<String, dynamic> map) {
    return PlanRuleScanAction(
      malwareScanner: pulumi.Input.fromValue(map['malwareScanner'] as String),
      scanMode: pulumi.Input.fromValue(map['scanMode'] as String),
    );
  }
}

