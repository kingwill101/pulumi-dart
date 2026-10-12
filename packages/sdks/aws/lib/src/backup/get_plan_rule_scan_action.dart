// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlanRuleScanAction {
  /// Malware scanner used for the scan setting.
  final pulumi.Input<String> malwareScanner;
  /// Mode of the malware scan.
  final pulumi.Input<String> scanMode;

  /// Creates a new [GetPlanRuleScanAction].
  /// [malwareScanner] Malware scanner used for the scan setting.
  /// [scanMode] Mode of the malware scan.
  const GetPlanRuleScanAction({
    required this.malwareScanner,
    required this.scanMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'malwareScanner': malwareScanner,
      'scanMode': scanMode,
    };
  }

  factory GetPlanRuleScanAction.fromMap(Map<String, dynamic> map) {
    return GetPlanRuleScanAction(
      malwareScanner: pulumi.Input.fromValue(map['malwareScanner'] as String),
      scanMode: pulumi.Input.fromValue(map['scanMode'] as String),
    );
  }
}
