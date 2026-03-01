// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_network_acls_virtual_network_rule.dart';

class AccountNetworkAcls {
  /// Whether to allow trusted Azure Services to access the service. Possible values are `None` and `AzureServices`.
  ///
  /// > **Note:** `bypass` can only be set when `kind` is set to `OpenAI`, `AIServices`, or `TextAnalytics`.
  final String? bypass;
  /// The Default Action to use when no rules match from `ip_rules` / `virtual_network_rules`. Possible values are `Allow` and `Deny`.
  final String defaultAction;
  /// One or more IP Addresses, or CIDR Blocks which should be able to access the Cognitive Account.
  final List<String>? ipRules;
  /// A `virtual_network_rules` block as defined below.
  final List<AccountNetworkAclsVirtualNetworkRule>? virtualNetworkRules;

  /// Creates a new [AccountNetworkAcls].
  /// [bypass] Whether to allow trusted Azure Services to access the service. Possible values are `None` and `AzureServices`.
  /// [defaultAction] The Default Action to use when no rules match from `ip_rules` / `virtual_network_rules`. Possible values are `Allow` and `Deny`.
  /// [ipRules] One or more IP Addresses, or CIDR Blocks which should be able to access the Cognitive Account.
  /// [virtualNetworkRules] A `virtual_network_rules` block as defined below.
  AccountNetworkAcls({
    this.bypass,
    required this.defaultAction,
    this.ipRules,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass,
      'defaultAction': defaultAction,
      'ipRules': ?ipRules,
      'virtualNetworkRules': ?virtualNetworkRules == null ? null : pulumi.Input.encodeList<AccountNetworkAclsVirtualNetworkRule, Map<String, dynamic>>(virtualNetworkRules!, (value) => value.toMap()),
    };
  }

  factory AccountNetworkAcls.fromMap(Map<String, dynamic> map) {
    return AccountNetworkAcls(
      bypass: map['bypass'] == null ? null : map['bypass'] as String,
      defaultAction: map['defaultAction'] as String,
      ipRules: map['ipRules'] == null ? null : (map['ipRules'] as List).cast<String>(),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : pulumi.Input.decodeList<AccountNetworkAclsVirtualNetworkRule>(map['virtualNetworkRules'], (value) => AccountNetworkAclsVirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

