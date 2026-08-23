// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_rule_response.dart';

/// Result data returned by getRulesEngine.
class GetRulesEngineResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
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

  /// Creates a new [GetRulesEngineResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [resourceState] Resource status.
  /// [rules] A list of rules that define a particular Rules Engine Configuration.
  /// [type] Resource type.
  const GetRulesEngineResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.resourceState,
    this.rules,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'resourceState': resourceState,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<RulesEngineRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
    };
  }

  factory GetRulesEngineResult.fromMap(Map<String, dynamic> map) {
    return GetRulesEngineResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceState: map['resourceState'] as String,
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RulesEngineRuleResponse>(guardedValue, (value) => RulesEngineRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
    );
  }
}
