// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nwrule_set_ip_rules.dart';
import 'nwrule_set_virtual_network_rules.dart';

/// {@template pulumi_eventhub_namespace_network_rule_set_args_doc}
/// The set of arguments for NamespaceNetworkRuleSet.
/// {@endtemplate}
/// {@macro pulumi_eventhub_namespace_network_rule_set_args_doc}
class NamespaceNetworkRuleSetArgs {
  /// Default Action for Network Rule Set
  final pulumi.Input<String>? defaultAction;

  /// List of IpRules
  final pulumi.Input<List<NWRuleSetIpRules>>? ipRules;

  /// The Namespace name
  final pulumi.Input<String> namespaceName;

  /// This determines if traffic is allowed over public network. By default it is enabled. If value is SecuredByPerimeter then Inbound and Outbound communication is controlled by the network security perimeter and profile's access rules.
  final pulumi.Input<String>? publicNetworkAccess;

  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Value that indicates whether Trusted Service Access is Enabled or not.
  final pulumi.Input<bool>? trustedServiceAccessEnabled;

  /// List VirtualNetwork Rules
  final pulumi.Input<List<NWRuleSetVirtualNetworkRules>>? virtualNetworkRules;

  /// Creates a new [NamespaceNetworkRuleSetArgs].
  /// [defaultAction] Default Action for Network Rule Set
  /// [ipRules] List of IpRules
  /// [namespaceName] The Namespace name
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled. If value is SecuredByPerimeter then Inbound and Outbound communication is controlled by the network security perimeter and profile's access rules.
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  /// [trustedServiceAccessEnabled] Value that indicates whether Trusted Service Access is Enabled or not.
  /// [virtualNetworkRules] List VirtualNetwork Rules
  NamespaceNetworkRuleSetArgs({
    this.defaultAction,
    this.ipRules,
    required this.namespaceName,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.trustedServiceAccessEnabled,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'ipRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<NWRuleSetIpRules>,
            List<Map<String, dynamic>>
          >(
            ipRules,
            (value) =>
                pulumi.Input.encodeList<NWRuleSetIpRules, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'namespaceName': namespaceName,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'trustedServiceAccessEnabled': ?trustedServiceAccessEnabled,
      'virtualNetworkRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<NWRuleSetVirtualNetworkRules>,
            List<Map<String, dynamic>>
          >(
            virtualNetworkRules,
            (value) =>
                pulumi.Input.encodeList<
                  NWRuleSetVirtualNetworkRules,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NamespaceNetworkRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceNetworkRuleSetArgs(
      defaultAction: (() {
        final guardedValue = map['defaultAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipRules: (() {
        final guardedValue = map['ipRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NWRuleSetIpRules>(
            guardedValue,
            (value) => NWRuleSetIpRules.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      trustedServiceAccessEnabled: (() {
        final guardedValue = map['trustedServiceAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      virtualNetworkRules: (() {
        final guardedValue = map['virtualNetworkRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NWRuleSetVirtualNetworkRules>(
            guardedValue,
            (value) => NWRuleSetVirtualNetworkRules.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
