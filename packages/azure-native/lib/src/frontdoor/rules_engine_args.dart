// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_rule.dart';

/// {@template pulumi_frontdoor_rules_engine_args_doc}
/// The set of arguments for RulesEngine.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_rules_engine_args_doc}
class RulesEngineArgs {
  /// Name of the Front Door which is globally unique.
  final pulumi.Input<String> frontDoorName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// A list of rules that define a particular Rules Engine Configuration.
  final pulumi.Input<List<RulesEngineRule>>? rules;
  /// Name of the Rules Engine which is unique within the Front Door.
  final pulumi.Input<String>? rulesEngineName;

  /// Creates a new [RulesEngineArgs].
  /// [frontDoorName] Name of the Front Door which is globally unique.
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  /// [rules] A list of rules that define a particular Rules Engine Configuration.
  /// [rulesEngineName] Name of the Rules Engine which is unique within the Front Door.
  RulesEngineArgs({
    required String frontDoorName,
    required String resourceGroupName,
    List<RulesEngineRule>? rules,
    String? rulesEngineName,
  }) :
      frontDoorName = pulumi.Input.asInput<String>(frontDoorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rules = pulumi.Input.asOptionalInput<List<RulesEngineRule>>(rules),
      rulesEngineName = pulumi.Input.asOptionalInput<String>(rulesEngineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontDoorName': frontDoorName,
      'resourceGroupName': resourceGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RulesEngineRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RulesEngineRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rulesEngineName': ?rulesEngineName,
    };
  }

  factory RulesEngineArgs.fromMap(Map<String, dynamic> map) {
    return RulesEngineArgs(
      frontDoorName: map['frontDoorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<RulesEngineRule>(map['rules'], (value) => RulesEngineRule.fromMap((value as Map).cast<String, dynamic>())),
      rulesEngineName: map['rulesEngineName'] == null ? null : map['rulesEngineName'] as String,
    );
  }
}

