// ignore_for_file: unused_element, unnecessary_cast

class GetPlanScanSetting {
  final String malwareScanner;
  final List<String> resourceTypes;
  final String scannerRoleArn;

  GetPlanScanSetting({
    required this.malwareScanner,
    required this.resourceTypes,
    required this.scannerRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['malwareScanner'] = malwareScanner;
    map['resourceTypes'] = resourceTypes;
    map['scannerRoleArn'] = scannerRoleArn;
    return map;
  }

  factory GetPlanScanSetting.fromMap(Map<String, dynamic> map) {
    return GetPlanScanSetting(
      malwareScanner: map['malwareScanner'] as String,
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
      scannerRoleArn: map['scannerRoleArn'] as String,
    );
  }
}
