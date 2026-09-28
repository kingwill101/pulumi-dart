// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlanScanSetting {
  /// Malware scanner used for the scan setting.
  final pulumi.Input<String> malwareScanner;
  /// Resource types to scan.
  final pulumi.Input<List<String>> resourceTypes;
  /// ARN of the IAM role used by the scanner.
  final pulumi.Input<String> scannerRoleArn;

  /// Creates a new [GetPlanScanSetting].
  /// [malwareScanner] Malware scanner used for the scan setting.
  /// [resourceTypes] Resource types to scan.
  /// [scannerRoleArn] ARN of the IAM role used by the scanner.
  const GetPlanScanSetting({
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
      malwareScanner: pulumi.Input.fromValue(map['malwareScanner'] as String),
      resourceTypes: pulumi.Input.fromValue((map['resourceTypes'] as List).cast<String>()),
      scannerRoleArn: pulumi.Input.fromValue(map['scannerRoleArn'] as String),
    );
  }
}
