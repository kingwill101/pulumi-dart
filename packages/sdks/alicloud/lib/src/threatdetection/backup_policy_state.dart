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
    this.backupPolicyName,
    this.policy,
    this.policyRegionId,
    this.policyVersion,
    this.status,
    this.uuidLists,
  });

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
      backupPolicyName: (() {
        final guardedValue = map['backupPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyRegionId: (() {
        final guardedValue = map['policyRegionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyVersion: (() {
        final guardedValue = map['policyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uuidLists: (() {
        final guardedValue = map['uuidLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
