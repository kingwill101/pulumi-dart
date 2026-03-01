// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_network_profile_node_management_access_ip_rule.dart';

class AccountNetworkProfileNodeManagementAccess {
  /// Specifies the default action for the node management access. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  final String? defaultAction;
  /// One or more `ip_rule` blocks as defined below.
  final List<AccountNetworkProfileNodeManagementAccessIpRule>? ipRules;

  /// Creates a new [AccountNetworkProfileNodeManagementAccess].
  /// [defaultAction] Specifies the default action for the node management access. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  /// [ipRules] One or more `ip_rule` blocks as defined below.
  AccountNetworkProfileNodeManagementAccess({
    this.defaultAction,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<AccountNetworkProfileNodeManagementAccessIpRule, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
    };
  }

  factory AccountNetworkProfileNodeManagementAccess.fromMap(Map<String, dynamic> map) {
    return AccountNetworkProfileNodeManagementAccess(
      defaultAction: map['defaultAction'] == null ? null : map['defaultAction'] as String,
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<AccountNetworkProfileNodeManagementAccessIpRule>(map['ipRules'], (value) => AccountNetworkProfileNodeManagementAccessIpRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

