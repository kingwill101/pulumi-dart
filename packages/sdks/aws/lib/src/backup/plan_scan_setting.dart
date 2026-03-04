// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanScanSetting {
  /// Malware scanner to use for the scan setting. Currently only `GUARDDUTY` is supported.
  final pulumi.Input<String> malwareScanner;

  /// List of resource types to apply the scan setting to. Valid values are `EBS`, `EC2`, `S3` and `ALL`.
  final pulumi.Input<List<String>> resourceTypes;

  /// ARN of the IAM role that AWS Backup uses to scan resources. See [the AWS documentation](https://docs.aws.amazon.com/guardduty/latest/ug/malware-protection-backup-iam-permissions.html) for details.
  final pulumi.Input<String> scannerRoleArn;

  /// Creates a new [PlanScanSetting].
  /// [malwareScanner] Malware scanner to use for the scan setting. Currently only `GUARDDUTY` is supported.
  /// [resourceTypes] List of resource types to apply the scan setting to. Valid values are `EBS`, `EC2`, `S3` and `ALL`.
  /// [scannerRoleArn] ARN of the IAM role that AWS Backup uses to scan resources. See [the AWS documentation](https://docs.aws.amazon.com/guardduty/latest/ug/malware-protection-backup-iam-permissions.html) for details.
  PlanScanSetting({
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

  factory PlanScanSetting.fromMap(Map<String, dynamic> map) {
    return PlanScanSetting(
      malwareScanner: pulumi.Input.fromValue(map['malwareScanner'] as String),
      resourceTypes: pulumi.Input.fromValue(
        (map['resourceTypes'] as List).cast<String>(),
      ),
      scannerRoleArn: pulumi.Input.fromValue(map['scannerRoleArn'] as String),
    );
  }
}
