// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionEnvironment {
  /// Map of environment variables that are accessible from the function code during execution.
  final Map<String, String> variables;

  GetFunctionEnvironment({
    required this.variables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['variables'] = variables;
    return map;
  }

  factory GetFunctionEnvironment.fromMap(Map<String, dynamic> map) {
    return GetFunctionEnvironment(
      variables: (map['variables'] as Map).cast<String, String>(),
    );
  }
}
