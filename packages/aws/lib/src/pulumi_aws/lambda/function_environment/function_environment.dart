// ignore_for_file: unused_element, unnecessary_cast

class FunctionEnvironment {
  /// Map of environment variables available to your Lambda function during execution.
  final Map<String, String>? variables;

  FunctionEnvironment({
    this.variables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final variablesValue = variables;
    if (variablesValue != null) {
      map['variables'] = variablesValue;
    }
    return map;
  }

  factory FunctionEnvironment.fromMap(Map<String, dynamic> map) {
    return FunctionEnvironment(
      variables: map['variables'] == null
          ? null
          : (map['variables'] as Map).cast<String, String>(),
    );
  }
}
