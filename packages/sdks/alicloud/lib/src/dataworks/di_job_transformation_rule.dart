// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiJobTransformationRule {
  /// Action type, optional enumeration value:
  ///
  /// DefinePrimaryKey (defines the primary key)
  ///
  /// Rename
  ///
  /// AddColumn (increase column)
  ///
  /// HandleDml(DML handling)
  ///
  /// DefineIncrementalCondition
  final pulumi.Input<String>? ruleActionType;
  /// Regular expression, in json string format.
  ///
  /// Example renaming rule (Rename): {"expression":"${srcDatasourceName}_${srcDatabaseName}_0922","variables":[{"variableName":"srcDatabaseName","variableRules":[{"from":"fromdb","to":"todb"}]}]}
  final pulumi.Input<String>? ruleExpression;
  /// Rule Name
  final pulumi.Input<String>? ruleName;
  /// Target type of action, optional enumeration value:
  ///
  /// Table (Table)
  ///
  /// Schema(schema)
  final pulumi.Input<String>? ruleTargetType;

  /// Creates a new [DiJobTransformationRule].
  /// [ruleActionType] Action type, optional enumeration value:
  /// [ruleExpression] Regular expression, in json string format.
  /// [ruleName] Rule Name
  /// [ruleTargetType] Target type of action, optional enumeration value:
  DiJobTransformationRule({
    this.ruleActionType,
    this.ruleExpression,
    this.ruleName,
    this.ruleTargetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleActionType': ?ruleActionType,
      'ruleExpression': ?ruleExpression,
      'ruleName': ?ruleName,
      'ruleTargetType': ?ruleTargetType,
    };
  }

  factory DiJobTransformationRule.fromMap(Map<String, dynamic> map) {
    return DiJobTransformationRule(
      ruleActionType: map['ruleActionType'] == null ? null : (map['ruleActionType'] as String).input(),
      ruleExpression: map['ruleExpression'] == null ? null : (map['ruleExpression'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      ruleTargetType: map['ruleTargetType'] == null ? null : (map['ruleTargetType'] as String).input(),
    );
  }
}

