// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_rule_response.dart';

/// A rules engine configuration containing a list of rules that will run to modify the runtime behavior of the request and response.
class RulesEngineResponse {
  /// Resource ID.
  final pulumi.Input<String> id;
  /// Resource name.
  final pulumi.Input<String> name;
  /// Resource status.
  final pulumi.Input<String> resourceState;
  /// A list of rules that define a particular Rules Engine Configuration.
  final pulumi.Input<List<RulesEngineRuleResponse>>? rules;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [RulesEngineResponse].
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [resourceState] Resource status.
  /// [rules] A list of rules that define a particular Rules Engine Configuration.
  /// [type] Resource type.
  RulesEngineResponse({
    required this.id,
    required this.name,
    required this.resourceState,
    this.rules,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'resourceState': resourceState,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RulesEngineRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RulesEngineRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory RulesEngineResponse.fromMap(Map<String, dynamic> map) {
    return RulesEngineResponse(
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      resourceState: (map['resourceState'] as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<RulesEngineRuleResponse>(map['rules']!, (value) => RulesEngineRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}

