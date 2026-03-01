// ignore_for_file: unused_element, unnecessary_cast

class GetPlanScanSetting {
  final String malwareScanner;
  final List<String> resourceTypes;
  final String scannerRoleArn;

  /// Creates a new [GetPlanScanSetting].
  /// [malwareScanner] Required.
  /// [resourceTypes] Required.
  /// [scannerRoleArn] Required.
  GetPlanScanSetting({
    required this.malwareScanner,
    required this.resourceTypes,
    required this.scannerRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'malwareScanner': malwareScanner,
      'resourceTypes': resourceTypes,
      'scannerRoleArn': scannerRoleArn,
    };
  }

  factory GetPlanScanSetting.fromMap(Map<String, dynamic> map) {
    return GetPlanScanSetting(
      malwareScanner: map['malwareScanner'] as String,
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
      scannerRoleArn: map['scannerRoleArn'] as String,
    );
  }
}
