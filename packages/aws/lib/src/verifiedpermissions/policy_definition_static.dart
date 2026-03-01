// ignore_for_file: unused_element, unnecessary_cast

class PolicyDefinitionStatic {
  /// The description of the static policy.
  final String? description;

  /// The statement of the static policy.
  final String statement;

  /// Creates a new [PolicyDefinitionStatic].
  /// [description] The description of the static policy.
  /// [statement] The statement of the static policy.
  PolicyDefinitionStatic({this.description, required this.statement});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'statement': statement,
    };
  }

  factory PolicyDefinitionStatic.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionStatic(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      statement: map['statement'] as String,
    );
  }
}
