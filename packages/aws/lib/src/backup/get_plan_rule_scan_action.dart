// ignore_for_file: unused_element, unnecessary_cast

class GetPlanRuleScanAction {
  final String malwareScanner;
  final String scanMode;

  /// Creates a new [GetPlanRuleScanAction].
  /// [malwareScanner] Required.
  /// [scanMode] Required.
  GetPlanRuleScanAction({required this.malwareScanner, required this.scanMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'malwareScanner': malwareScanner,
      'scanMode': scanMode,
    };
  }

  factory GetPlanRuleScanAction.fromMap(Map<String, dynamic> map) {
    return GetPlanRuleScanAction(
      malwareScanner: map['malwareScanner'] as String,
      scanMode: map['scanMode'] as String,
    );
  }
}
