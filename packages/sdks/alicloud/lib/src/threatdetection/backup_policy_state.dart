// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupPolicy resources.
class BackupPolicyState {
  /// Protection of the Name of the Policy.
  final pulumi.Input<String>? backupPolicyName;
  /// The Specified Protection Policies of the Specific Configuration. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createbackuppolicy).
  final pulumi.Input<String>? policy;
  /// The region ID of the non-Alibaba cloud server. You can call the [DescribeSupportRegion](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-describesupportregion) interface to view the region supported by anti-ransomware, and then select the region supported by anti-ransomware according to the region where your non-Alibaba cloud server is located.
  final pulumi.Input<String>? policyRegionId;
  /// Anti-Blackmail Policy Version. Valid values: `1.0.0`, `2.0.0`.
  final pulumi.Input<String>? policyVersion;
  /// The status of the Backup Policy instance.
  final pulumi.Input<String>? status;
  /// Specify the Protection of Server UUID List.
  final pulumi.Input<List<String>>? uuidLists;

  /// Creates a new [BackupPolicyState].
  /// [backupPolicyName] Protection of the Name of the Policy.
  /// [policy] The Specified Protection Policies of the Specific Configuration. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createbackuppolicy).
  /// [policyRegionId] The region ID of the non-Alibaba cloud server. You can call the [DescribeSupportRegion](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-describesupportregion) interface to view the region supported by anti-ransomware, and then select the region supported by anti-ransomware according to the region where your non-Alibaba cloud server is located.
  /// [policyVersion] Anti-Blackmail Policy Version. Valid values: `1.0.0`, `2.0.0`.
  /// [status] The status of the Backup Policy instance.
  /// [uuidLists] Specify the Protection of Server UUID List.
  BackupPolicyState({
    pulumi.Output<String>? backupPolicyName,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? policyRegionId,
    pulumi.Output<String>? policyVersion,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? uuidLists,
  }) :
      backupPolicyName = pulumi.Input.asOptionalInput<String>(backupPolicyName),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      policyRegionId = pulumi.Input.asOptionalInput<String>(policyRegionId),
      policyVersion = pulumi.Input.asOptionalInput<String>(policyVersion),
      status = pulumi.Input.asOptionalInput<String>(status),
      uuidLists = pulumi.Input.asOptionalInput<List<String>>(uuidLists);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyName': ?backupPolicyName,
      'policy': ?policy,
      'policyRegionId': ?policyRegionId,
      'policyVersion': ?policyVersion,
      'status': ?status,
      'uuidLists': ?uuidLists,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      backupPolicyName: map['backupPolicyName'] == null ? null : pulumi.Output.create<String>(map['backupPolicyName'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      policyRegionId: map['policyRegionId'] == null ? null : pulumi.Output.create<String>(map['policyRegionId'] as String),
      policyVersion: map['policyVersion'] == null ? null : pulumi.Output.create<String>(map['policyVersion'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      uuidLists: map['uuidLists'] == null ? null : pulumi.Output.create<List<String>>((map['uuidLists'] as List).cast<String>()),
    );
  }
}

