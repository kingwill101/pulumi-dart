// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipset_response.dart';

/// Definition of RuleVariables
class RuleVariablesModelResponse {
  /// Property ruleVariables
  final Map<String, IPSetResponse>? ruleVariables;

  /// Creates a new [RuleVariablesModelResponse].
  /// [ruleVariables] Property ruleVariables
  RuleVariablesModelResponse({
    this.ruleVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleVariables': ?ruleVariables == null ? null : pulumi.Input.encodeMapValues<IPSetResponse, Map<String, dynamic>>(ruleVariables!, (value) => value.toMap()),
    };
  }

  factory RuleVariablesModelResponse.fromMap(Map<String, dynamic> map) {
    return RuleVariablesModelResponse(
      ruleVariables: map['ruleVariables'] == null ? null : pulumi.Input.decodeMapValues<IPSetResponse>(map['ruleVariables'], (value) => IPSetResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

