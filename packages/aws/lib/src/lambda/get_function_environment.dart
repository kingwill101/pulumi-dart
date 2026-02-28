// ignore_for_file: unused_element, unnecessary_cast


class GetFunctionEnvironment {
  /// Map of environment variables that are accessible from the function code during execution.
  final Map<String, String> variables;

  /// Creates a new [GetFunctionEnvironment].
  /// [variables] Map of environment variables that are accessible from the function code during execution.
  GetFunctionEnvironment({
    required this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variables': variables,
    };
  }

  factory GetFunctionEnvironment.fromMap(Map<String, dynamic> map) {
    return GetFunctionEnvironment(
      variables: (map['variables'] as Map).cast<String, String>(),
    );
  }
}

