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
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// A list of rules that define a particular Rules Engine Configuration.
  final pulumi.Input<List<RulesEngineRule>?>? rules;
  /// Name of the Rules Engine which is unique within the Front Door.
  final pulumi.Input<String?>? rulesEngineName;

  /// Creates a new [RulesEngineArgs].
  /// [frontDoorName] Name of the Front Door which is globally unique.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rules] A list of rules that define a particular Rules Engine Configuration.
  /// [rulesEngineName] Name of the Rules Engine which is unique within the Front Door.
  const RulesEngineArgs({
    required this.frontDoorName,
    required this.resourceGroupName,
    this.rules,
    this.rulesEngineName,
  });

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
      frontDoorName: pulumi.Input.fromValue(map['frontDoorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesEngineRule>(guardedValue, (value) => RulesEngineRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rulesEngineName: (() { final guardedValue = map['rulesEngineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
