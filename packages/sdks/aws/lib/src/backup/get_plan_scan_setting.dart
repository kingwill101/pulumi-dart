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

