// ignore_for_file: unused_element, unnecessary_cast

class PlanScanSetting {
  /// Malware scanner to use for the scan setting. Currently only `GUARDDUTY` is supported.
  final String malwareScanner;

  /// List of resource types to apply the scan setting to. Valid values are `EBS`, `EC2`, `S3` and `ALL`.
  final List<String> resourceTypes;

  /// ARN of the IAM role that AWS Backup uses to scan resources. See [the AWS documentation](https://docs.aws.amazon.com/guardduty/latest/ug/malware-protection-backup-iam-permissions.html) for details.
  final String scannerRoleArn;

  PlanScanSetting({
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

  factory PlanScanSetting.fromMap(Map<String, dynamic> map) {
    return PlanScanSetting(
      malwareScanner: map['malwareScanner'] as String,
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
      scannerRoleArn: map['scannerRoleArn'] as String,
    );
  }
}
