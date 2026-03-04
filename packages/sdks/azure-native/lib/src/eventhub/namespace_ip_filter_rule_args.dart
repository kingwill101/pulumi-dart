// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_namespace_ip_filter_rule_args_doc}
/// The set of arguments for NamespaceIpFilterRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_namespace_ip_filter_rule_args_doc}
class NamespaceIpFilterRuleArgs {
  /// The IP Filter Action
  final pulumi.Input<String>? action;

  /// IP Filter name
  final pulumi.Input<String>? filterName;

  /// The IP Filter Rule name.
  final pulumi.Input<String>? ipFilterRuleName;

  /// IP Mask
  final pulumi.Input<String>? ipMask;

  /// The Namespace name
  final pulumi.Input<String> namespaceName;

  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NamespaceIpFilterRuleArgs].
  /// [action] The IP Filter Action
  /// [filterName] IP Filter name
  /// [ipFilterRuleName] The IP Filter Rule name.
  /// [ipMask] IP Mask
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  NamespaceIpFilterRuleArgs({
    this.action,
    this.filterName,
    this.ipFilterRuleName,
    this.ipMask,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'filterName': ?filterName,
      'ipFilterRuleName': ?ipFilterRuleName,
      'ipMask': ?ipMask,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory NamespaceIpFilterRuleArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceIpFilterRuleArgs(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filterName: (() {
        final guardedValue = map['filterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipFilterRuleName: (() {
        final guardedValue = map['ipFilterRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipMask: (() {
        final guardedValue = map['ipMask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
