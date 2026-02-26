// ignore_for_file: unused_element, unnecessary_cast

class PlanRuleScanAction {
  /// Malware scanner to use for the scan action. Currently only `GUARDDUTY` is supported.
  final String malwareScanner;

  /// Scanning mode to use for the scan action. Valid values are `FULL_SCAN` and `INCREMENTAL_SCAN`.
  final String scanMode;

  PlanRuleScanAction({
    required this.malwareScanner,
    required this.scanMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['malwareScanner'] = malwareScanner;
    map['scanMode'] = scanMode;
    return map;
  }

  factory PlanRuleScanAction.fromMap(Map<String, dynamic> map) {
    return PlanRuleScanAction(
      malwareScanner: map['malwareScanner'] as String,
      scanMode: map['scanMode'] as String,
    );
  }
}
