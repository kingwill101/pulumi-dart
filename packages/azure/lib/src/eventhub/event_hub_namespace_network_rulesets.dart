// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_namespace_network_rulesets_ip_rule.dart';
import 'event_hub_namespace_network_rulesets_virtual_network_rule.dart';

class EventHubNamespaceNetworkRulesets {
  /// The default action to take when a rule is not matched. Possible values are `Allow` and `Deny`.
  final String defaultAction;
  /// One or more `ip_rule` blocks as defined below.
  final List<EventHubNamespaceNetworkRulesetsIpRule>? ipRules;
  /// Is public network access enabled for the EventHub Namespace? Defaults to `true`.
  ///
  /// > **Note:** The public network access setting at the network rule sets level should be the same as it's at the namespace level.
  final bool? publicNetworkAccessEnabled;
  /// Whether Trusted Microsoft Services are allowed to bypass firewall.
  final bool? trustedServiceAccessEnabled;
  /// One or more `virtual_network_rule` blocks as defined below.
  final List<EventHubNamespaceNetworkRulesetsVirtualNetworkRule>? virtualNetworkRules;

  /// Creates a new [EventHubNamespaceNetworkRulesets].
  /// [defaultAction] The default action to take when a rule is not matched. Possible values are `Allow` and `Deny`.
  /// [ipRules] One or more `ip_rule` blocks as defined below.
  /// [publicNetworkAccessEnabled] Is public network access enabled for the EventHub Namespace? Defaults to `true`.
  /// [trustedServiceAccessEnabled] Whether Trusted Microsoft Services are allowed to bypass firewall.
  /// [virtualNetworkRules] One or more `virtual_network_rule` blocks as defined below.
  EventHubNamespaceNetworkRulesets({
    required this.defaultAction,
    this.ipRules,
    this.publicNetworkAccessEnabled,
    this.trustedServiceAccessEnabled,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': defaultAction,
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<EventHubNamespaceNetworkRulesetsIpRule, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'trustedServiceAccessEnabled': ?trustedServiceAccessEnabled,
      'virtualNetworkRules': ?virtualNetworkRules == null ? null : pulumi.Input.encodeList<EventHubNamespaceNetworkRulesetsVirtualNetworkRule, Map<String, dynamic>>(virtualNetworkRules!, (value) => value.toMap()),
    };
  }

  factory EventHubNamespaceNetworkRulesets.fromMap(Map<String, dynamic> map) {
    return EventHubNamespaceNetworkRulesets(
      defaultAction: map['defaultAction'] as String,
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<EventHubNamespaceNetworkRulesetsIpRule>(map['ipRules'], (value) => EventHubNamespaceNetworkRulesetsIpRule.fromMap((value as Map).cast<String, dynamic>())),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : map['publicNetworkAccessEnabled'] as bool,
      trustedServiceAccessEnabled: map['trustedServiceAccessEnabled'] == null ? null : map['trustedServiceAccessEnabled'] as bool,
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : pulumi.Input.decodeList<EventHubNamespaceNetworkRulesetsVirtualNetworkRule>(map['virtualNetworkRules'], (value) => EventHubNamespaceNetworkRulesetsVirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

