// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elastic_get_tag_rule_args_doc}
/// Arguments for getTagRule.
/// {@endtemplate}
/// {@macro pulumi_elastic_get_tag_rule_args_doc}
class GetTagRuleArgs {
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Tag Rule Set resource name
  final pulumi.Input<String> ruleSetName;

  /// Creates a new [GetTagRuleArgs].
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleSetName] Tag Rule Set resource name
  GetTagRuleArgs({
    required String monitorName,
    required String resourceGroupName,
    required String ruleSetName,
  }) :
      monitorName = pulumi.Input.asInput<String>(monitorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleSetName = pulumi.Input.asInput<String>(ruleSetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorName': monitorName,
      'resourceGroupName': resourceGroupName,
      'ruleSetName': ruleSetName,
    };
  }

  factory GetTagRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetTagRuleArgs(
      monitorName: map['monitorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleSetName: map['ruleSetName'] as String,
    );
  }
}

