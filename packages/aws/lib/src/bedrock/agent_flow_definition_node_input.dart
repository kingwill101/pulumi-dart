// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeInput {
  /// How input data flows between iterations in a DoWhile loop.
  final String? category;
  final String expression;

  /// A name for the flow.
  final String name;
  final String type;

  /// Creates a new [AgentFlowDefinitionNodeInput].
  /// [category] How input data flows between iterations in a DoWhile loop.
  /// [expression] Required.
  /// [name] A name for the flow.
  /// [type] Required.
  AgentFlowDefinitionNodeInput({
    this.category,
    required this.expression,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoryValue = category;
    if (categoryValue != null) {
      map['category'] = categoryValue;
    }
    map['expression'] = expression;
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory AgentFlowDefinitionNodeInput.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeInput(
      category: map['category'] == null ? null : map['category'] as String,
      expression: map['expression'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
