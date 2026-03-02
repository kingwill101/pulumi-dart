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
    required this.ipFilterRuleName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipFilterRuleName': ipFilterRuleName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespaceIpFilterRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceIpFilterRuleArgs(
      ipFilterRuleName: (map['ipFilterRuleName'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

