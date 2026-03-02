// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_vul_whitelist_vul_whitelist_args_doc}
/// The set of arguments for VulWhitelist.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_vul_whitelist_vul_whitelist_args_doc}
class VulWhitelistArgs {
  /// Reason for adding whitelist.
  final pulumi.Input<String>? reason;
  /// Set the effective range of the whitelist. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifycreatevulwhitelist).
  final pulumi.Input<String>? targetInfo;
  /// Information about the vulnerability to be added to the whitelist. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifycreatevulwhitelist).
  final pulumi.Input<String> whitelist;

  /// Creates a new [VulWhitelistArgs].
  /// [reason] Reason for adding whitelist.
  /// [targetInfo] Set the effective range of the whitelist. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifycreatevulwhitelist).
  /// [whitelist] Information about the vulnerability to be added to the whitelist. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifycreatevulwhitelist).
  VulWhitelistArgs({
    this.reason,
    this.targetInfo,
    required this.whitelist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': ?reason,
      'targetInfo': ?targetInfo,
      'whitelist': whitelist,
    };
  }

  factory VulWhitelistArgs.fromMap(Map<String, dynamic> map) {
    return VulWhitelistArgs(
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      targetInfo: map['targetInfo'] == null ? null : (map['targetInfo'] as String).input(),
      whitelist: (map['whitelist'] as String).input(),
    );
  }
}

