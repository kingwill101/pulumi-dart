// ignore_for_file: unused_element, unnecessary_cast


/// Describes the variables available to group the rate limit requests
class GroupByVariable {
  /// Describes the supported variable for group by
  final String variableName;

  /// Creates a new [GroupByVariable].
  /// [variableName] Describes the supported variable for group by
  GroupByVariable({
    required this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variableName': variableName,
    };
  }

  factory GroupByVariable.fromMap(Map<String, dynamic> map) {
    return GroupByVariable(
      variableName: map['variableName'] as String,
    );
  }
}

