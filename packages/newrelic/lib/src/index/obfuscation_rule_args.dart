// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'obfuscation_rule_action.dart';

/// {@template pulumi_index_obfuscation_rule_obfuscation_rule_args_doc}
/// The set of arguments for ObfuscationRule.
/// {@endtemplate}
/// {@macro pulumi_index_obfuscation_rule_obfuscation_rule_args_doc}
class ObfuscationRuleArgs {
  /// The account id associated with the obfuscation rule.
  final pulumi.Input<String>? accountId;
  /// Actions for the rule. The actions will be applied in the order specified by this list.
  final pulumi.Input<List<ObfuscationRuleAction>> actions;
  /// Description of rule.
  final pulumi.Input<String>? description;
  /// Whether the rule should be applied or not to incoming data.
  final pulumi.Input<bool> enabled;
  /// NRQL for determining whether a given log record should have obfuscation actions applied.
  final pulumi.Input<String> filter;
  /// Name of rule.
  final pulumi.Input<String>? name;

  /// Creates a new [ObfuscationRuleArgs].
  /// [accountId] The account id associated with the obfuscation rule.
  /// [actions] Actions for the rule. The actions will be applied in the order specified by this list.
  /// [description] Description of rule.
  /// [enabled] Whether the rule should be applied or not to incoming data.
  /// [filter] NRQL for determining whether a given log record should have obfuscation actions applied.
  /// [name] Name of rule.
  ObfuscationRuleArgs({
    String? accountId,
    required List<ObfuscationRuleAction> actions,
    String? description,
    required bool enabled,
    required String filter,
    String? name,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      actions = pulumi.Input.asInput<List<ObfuscationRuleAction>>(actions),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asInput<bool>(enabled),
      filter = pulumi.Input.asInput<String>(filter),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'actions': pulumi.Input.mapInputValue<List<ObfuscationRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ObfuscationRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'enabled': enabled,
      'filter': filter,
      'name': ?name,
    };
  }

  factory ObfuscationRuleArgs.fromMap(Map<String, dynamic> map) {
    return ObfuscationRuleArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      actions: pulumi.Input.decodeList<ObfuscationRuleAction>(map['actions'], (value) => ObfuscationRuleAction.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] as bool,
      filter: map['filter'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

