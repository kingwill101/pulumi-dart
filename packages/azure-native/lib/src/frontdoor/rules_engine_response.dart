// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_rule_response.dart';

/// A rules engine configuration containing a list of rules that will run to modify the runtime behavior of the request and response.
class RulesEngineResponse {
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Resource status.
  final String resourceState;
  /// A list of rules that define a particular Rules Engine Configuration.
  final List<RulesEngineRuleResponse>? rules;
  /// Resource type.
  final String type;

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
      'rules': ?rules == null ? null : pulumi.Input.encodeList<RulesEngineRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory RulesEngineResponse.fromMap(Map<String, dynamic> map) {
    return RulesEngineResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      resourceState: map['resourceState'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<RulesEngineRuleResponse>(map['rules'], (value) => RulesEngineRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

