// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipset.dart';

/// Definition of RuleVariables
class RuleVariablesModel {
  /// Property ruleVariables
  final Map<String, IPSet>? ruleVariables;

  /// Creates a new [RuleVariablesModel].
  /// [ruleVariables] Property ruleVariables
  RuleVariablesModel({
    this.ruleVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleVariables': ?ruleVariables == null ? null : pulumi.Input.encodeMapValues<IPSet, Map<String, dynamic>>(ruleVariables!, (value) => value.toMap()),
    };
  }

  factory RuleVariablesModel.fromMap(Map<String, dynamic> map) {
    return RuleVariablesModel(
      ruleVariables: map['ruleVariables'] == null ? null : pulumi.Input.decodeMapValues<IPSet>(map['ruleVariables'], (value) => IPSet.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

