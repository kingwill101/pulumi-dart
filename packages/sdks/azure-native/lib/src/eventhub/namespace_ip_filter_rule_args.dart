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
    pulumi.Output<String>? action,
    pulumi.Output<String>? filterName,
    pulumi.Output<String>? ipFilterRuleName,
    pulumi.Output<String>? ipMask,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
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
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      filterName: map['filterName'] == null ? null : pulumi.Output.create<String>(map['filterName'] as String),
      ipFilterRuleName: map['ipFilterRuleName'] == null ? null : pulumi.Output.create<String>(map['ipFilterRuleName'] as String),
      ipMask: map['ipMask'] == null ? null : pulumi.Output.create<String>(map['ipMask'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

