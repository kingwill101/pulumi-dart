// ignore_for_file: unused_element, unnecessary_cast


/// Describes the variables available to group the rate limit requests
class GroupByVariableResponse {
  /// Describes the supported variable for group by
  final String variableName;

  /// Creates a new [GroupByVariableResponse].
  /// [variableName] Describes the supported variable for group by
  GroupByVariableResponse({
    required this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variableName': variableName,
    };
  }

  factory GroupByVariableResponse.fromMap(Map<String, dynamic> map) {
    return GroupByVariableResponse(
      variableName: map['variableName'] as String,
    );
  }
}

