// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_backup_policy_backup_policy_args_doc}
/// The set of arguments for BackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_backup_policy_backup_policy_args_doc}
class BackupPolicyArgs {
  /// Protection of the Name of the Policy.
  final pulumi.Input<String> backupPolicyName;
  /// The Specified Protection Policies of the Specific Configuration. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createbackuppolicy).
  final pulumi.Input<String> policy;
  /// The region ID of the non-Alibaba cloud server. You can call the [DescribeSupportRegion](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-describesupportregion) interface to view the region supported by anti-ransomware, and then select the region supported by anti-ransomware according to the region where your non-Alibaba cloud server is located.
  final pulumi.Input<String>? policyRegionId;
  /// Anti-Blackmail Policy Version. Valid values: `1.0.0`, `2.0.0`.
  final pulumi.Input<String> policyVersion;
  /// Specify the Protection of Server UUID List.
  final pulumi.Input<List<String>> uuidLists;

  /// Creates a new [BackupPolicyArgs].
  /// [backupPolicyName] Protection of the Name of the Policy.
  /// [policy] The Specified Protection Policies of the Specific Configuration. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createbackuppolicy).
  /// [policyRegionId] The region ID of the non-Alibaba cloud server. You can call the [DescribeSupportRegion](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-describesupportregion) interface to view the region supported by anti-ransomware, and then select the region supported by anti-ransomware according to the region where your non-Alibaba cloud server is located.
  /// [policyVersion] Anti-Blackmail Policy Version. Valid values: `1.0.0`, `2.0.0`.
  /// [uuidLists] Specify the Protection of Server UUID List.
  BackupPolicyArgs({
    required this.backupPolicyName,
    required this.policy,
    this.policyRegionId,
    required this.policyVersion,
    required this.uuidLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyName': backupPolicyName,
      'policy': policy,
      'policyRegionId': ?policyRegionId,
      'policyVersion': policyVersion,
      'uuidLists': uuidLists,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      backupPolicyName: (map['backupPolicyName'] as String).input(),
      policy: (map['policy'] as String).input(),
      policyRegionId: map['policyRegionId'] == null ? null : (map['policyRegionId']! as String).input(),
      policyVersion: (map['policyVersion'] as String).input(),
      uuidLists: ((map['uuidLists'] as List).cast<String>()).input(),
    );
  }
}

