// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipset.dart';

/// Definition of RuleVariables
class RuleVariablesModel {
  /// Property ruleVariables
  final pulumi.Input<Map<String, IPSet>>? ruleVariables;

  /// Creates a new [RuleVariablesModel].
  /// [ruleVariables] Property ruleVariables
  const RuleVariablesModel({
    this.ruleVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleVariables': ?pulumi.Input.mapOptionalInputValue<Map<String, IPSet>, Map<String, Map<String, dynamic>>>(ruleVariables, (value) => pulumi.Input.encodeMapValues<IPSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleVariablesModel.fromMap(Map<String, dynamic> map) {
    return RuleVariablesModel(
      ruleVariables: (() { final guardedValue = map['ruleVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<IPSet>(guardedValue, (value) => IPSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
