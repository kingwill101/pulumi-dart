// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_network_profile_account_access_ip_rule.dart';

class AccountNetworkProfileAccountAccess {
  /// Specifies the default action for the account access. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  final String? defaultAction;
  /// One or more `ip_rule` blocks as defined below.
  final List<AccountNetworkProfileAccountAccessIpRule>? ipRules;

  /// Creates a new [AccountNetworkProfileAccountAccess].
  /// [defaultAction] Specifies the default action for the account access. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  /// [ipRules] One or more `ip_rule` blocks as defined below.
  AccountNetworkProfileAccountAccess({
    this.defaultAction,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<AccountNetworkProfileAccountAccessIpRule, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
    };
  }

  factory AccountNetworkProfileAccountAccess.fromMap(Map<String, dynamic> map) {
    return AccountNetworkProfileAccountAccess(
      defaultAction: map['defaultAction'] == null ? null : map['defaultAction'] as String,
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<AccountNetworkProfileAccountAccessIpRule>(map['ipRules'], (value) => AccountNetworkProfileAccountAccessIpRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

