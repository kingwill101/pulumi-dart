// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_namespace_ip_filter_rule_args_doc}
/// Arguments for getNamespaceIpFilterRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_namespace_ip_filter_rule_args_doc}
class GetNamespaceIpFilterRuleArgs {
  /// The IP Filter Rule name.
  final pulumi.Input<String> ipFilterRuleName;
  /// The Namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNamespaceIpFilterRuleArgs].
  /// [ipFilterRuleName] The IP Filter Rule name.
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  GetNamespaceIpFilterRuleArgs({
    required pulumi.Output<String> ipFilterRuleName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      ipFilterRuleName = pulumi.Input.asInput<String>(ipFilterRuleName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipFilterRuleName': ipFilterRuleName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespaceIpFilterRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceIpFilterRuleArgs(
      ipFilterRuleName: pulumi.Output.create<String>(map['ipFilterRuleName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

