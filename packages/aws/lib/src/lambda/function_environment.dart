// ignore_for_file: unused_element, unnecessary_cast


class FunctionEnvironment {
  /// Map of environment variables available to your Lambda function during execution.
  final Map<String, String>? variables;

  /// Creates a new [FunctionEnvironment].
  /// [variables] Map of environment variables available to your Lambda function during execution.
  FunctionEnvironment({
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variables': ?variables,
    };
  }

  factory FunctionEnvironment.fromMap(Map<String, dynamic> map) {
    return FunctionEnvironment(
      variables: map['variables'] == null ? null : (map['variables'] as Map).cast<String, String>(),
    );
  }
}

