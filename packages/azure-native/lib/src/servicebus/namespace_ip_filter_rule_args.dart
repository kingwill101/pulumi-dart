// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_namespace_ip_filter_rule_args_doc}
/// The set of arguments for NamespaceIpFilterRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_namespace_ip_filter_rule_args_doc}
class NamespaceIpFilterRuleArgs {
  /// The IP Filter Action
  final pulumi.Input<String>? action;
  /// IP Filter name
  final pulumi.Input<String>? filterName;
  /// The IP Filter Rule name.
  final pulumi.Input<String>? ipFilterRuleName;
  /// IP Mask
  final pulumi.Input<String>? ipMask;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NamespaceIpFilterRuleArgs].
  /// [action] The IP Filter Action
  /// [filterName] IP Filter name
  /// [ipFilterRuleName] The IP Filter Rule name.
  /// [ipMask] IP Mask
  /// [namespaceName] The namespace name
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  NamespaceIpFilterRuleArgs({
    String? action,
    String? filterName,
    String? ipFilterRuleName,
    String? ipMask,
    required String namespaceName,
    required String resourceGroupName,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      filterName = pulumi.Input.asOptionalInput<String>(filterName),
      ipFilterRuleName = pulumi.Input.asOptionalInput<String>(ipFilterRuleName),
      ipMask = pulumi.Input.asOptionalInput<String>(ipMask),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      action: map['action'] == null ? null : map['action'] as String,
      filterName: map['filterName'] == null ? null : map['filterName'] as String,
      ipFilterRuleName: map['ipFilterRuleName'] == null ? null : map['ipFilterRuleName'] as String,
      ipMask: map['ipMask'] == null ? null : map['ipMask'] as String,
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

