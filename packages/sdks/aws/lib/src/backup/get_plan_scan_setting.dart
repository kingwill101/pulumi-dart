// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlanScanSetting {
  final pulumi.Input<String> malwareScanner;
  final pulumi.Input<List<String>> resourceTypes;
  final pulumi.Input<String> scannerRoleArn;

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
      malwareScanner: (map['malwareScanner'] as String).input(),
      resourceTypes: ((map['resourceTypes'] as List).cast<String>()).input(),
      scannerRoleArn: (map['scannerRoleArn'] as String).input(),
    );
  }
}

