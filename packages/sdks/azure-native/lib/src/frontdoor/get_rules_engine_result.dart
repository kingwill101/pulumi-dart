// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_rule_response.dart';

/// Result data returned by getRulesEngine.
class GetRulesEngineResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Resource status.
  final String? resourceState;
  /// A list of rules that define a particular Rules Engine Configuration.
  final List<RulesEngineRuleResponse>? rules;
  /// Resource type.
  final String? type;

  /// Creates a new [GetRulesEngineResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [resourceState] Resource status.
  /// [rules] A list of rules that define a particular Rules Engine Configuration.
  /// [type] Resource type.
  const GetRulesEngineResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.resourceState,
    this.rules,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'resourceState': ?resourceState,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<RulesEngineRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetRulesEngineResult.fromMap(Map<String, dynamic> map) {
    return GetRulesEngineResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceState: (() { final guardedValue = map['resourceState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RulesEngineRuleResponse>(guardedValue, (value) => RulesEngineRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
