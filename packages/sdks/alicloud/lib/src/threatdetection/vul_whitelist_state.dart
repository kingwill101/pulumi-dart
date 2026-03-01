// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VulWhitelist resources.
class VulWhitelistState {
  /// Reason for adding whitelist.
  final pulumi.Input<String>? reason;
  /// Set the effective range of the whitelist. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifycreatevulwhitelist).
  final pulumi.Input<String>? targetInfo;
  /// Information about the vulnerability to be added to the whitelist. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifycreatevulwhitelist).
  final pulumi.Input<String>? whitelist;

  /// Creates a new [VulWhitelistState].
  /// [reason] Reason for adding whitelist.
  /// [targetInfo] Set the effective range of the whitelist. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifycreatevulwhitelist).
  /// [whitelist] Information about the vulnerability to be added to the whitelist. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifycreatevulwhitelist).
  VulWhitelistState({
    pulumi.Output<String>? reason,
    pulumi.Output<String>? targetInfo,
    pulumi.Output<String>? whitelist,
  }) :
      reason = pulumi.Input.asOptionalInput<String>(reason),
      targetInfo = pulumi.Input.asOptionalInput<String>(targetInfo),
      whitelist = pulumi.Input.asOptionalInput<String>(whitelist);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': ?reason,
      'targetInfo': ?targetInfo,
      'whitelist': ?whitelist,
    };
  }

  factory VulWhitelistState.fromMap(Map<String, dynamic> map) {
    return VulWhitelistState(
      reason: map['reason'] == null ? null : pulumi.Output.create<String>(map['reason'] as String),
      targetInfo: map['targetInfo'] == null ? null : pulumi.Output.create<String>(map['targetInfo'] as String),
      whitelist: map['whitelist'] == null ? null : pulumi.Output.create<String>(map['whitelist'] as String),
    );
  }
}

