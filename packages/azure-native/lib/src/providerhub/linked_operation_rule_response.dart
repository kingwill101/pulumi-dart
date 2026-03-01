// ignore_for_file: unused_element, unnecessary_cast


class LinkedOperationRuleResponse {
  /// Depends on types.
  final List<String>? dependsOnTypes;
  /// The linked action.
  final String linkedAction;
  /// The linked operation.
  final String linkedOperation;

  /// Creates a new [LinkedOperationRuleResponse].
  /// [dependsOnTypes] Depends on types.
  /// [linkedAction] The linked action.
  /// [linkedOperation] The linked operation.
  LinkedOperationRuleResponse({
    this.dependsOnTypes,
    required this.linkedAction,
    required this.linkedOperation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOnTypes': ?dependsOnTypes,
      'linkedAction': linkedAction,
      'linkedOperation': linkedOperation,
    };
  }

  factory LinkedOperationRuleResponse.fromMap(Map<String, dynamic> map) {
    return LinkedOperationRuleResponse(
      dependsOnTypes: map['dependsOnTypes'] == null ? null : (map['dependsOnTypes'] as List).cast<String>(),
      linkedAction: map['linkedAction'] as String,
      linkedOperation: map['linkedOperation'] as String,
    );
  }
}

