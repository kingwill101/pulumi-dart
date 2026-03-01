// ignore_for_file: unused_element, unnecessary_cast


class DiJobTableMappingTransformationRule {
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
  final String? ruleActionType;
  /// Rule Name
  final String? ruleName;
  /// Target type of action, optional enumeration value:
  ///
  /// Table (Table)
  ///
  /// Schema(schema)
  final String? ruleTargetType;

  /// Creates a new [DiJobTableMappingTransformationRule].
  /// [ruleActionType] Action type, optional enumeration value:
  /// [ruleName] Rule Name
  /// [ruleTargetType] Target type of action, optional enumeration value:
  DiJobTableMappingTransformationRule({
    this.ruleActionType,
    this.ruleName,
    this.ruleTargetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleActionType': ?ruleActionType,
      'ruleName': ?ruleName,
      'ruleTargetType': ?ruleTargetType,
    };
  }

  factory DiJobTableMappingTransformationRule.fromMap(Map<String, dynamic> map) {
    return DiJobTableMappingTransformationRule(
      ruleActionType: map['ruleActionType'] == null ? null : map['ruleActionType'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      ruleTargetType: map['ruleTargetType'] == null ? null : map['ruleTargetType'] as String,
    );
  }
}

