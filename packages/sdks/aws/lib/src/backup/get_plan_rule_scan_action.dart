// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlanRuleScanAction {
  final pulumi.Input<String> malwareScanner;
  final pulumi.Input<String> scanMode;

  /// Creates a new [GetPlanRuleScanAction].
  /// [malwareScanner] Required.
  /// [scanMode] Required.
  GetPlanRuleScanAction({
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
      malwareScanner: (map['malwareScanner'] as String).input(),
      scanMode: (map['scanMode'] as String).input(),
    );
  }
}

