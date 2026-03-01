// ignore_for_file: unused_element, unnecessary_cast


/// ContainerRestartRuleOnExitCodes describes the condition for handling an exited container based on its exit codes.
class ContainerRestartRuleOnExitCodesPatch {
  /// Represents the relationship between the container exit code(s) and the specified values. Possible values are: - In: the requirement is satisfied if the container exit code is in the
  /// set of specified values.
  /// - NotIn: the requirement is satisfied if the container exit code is
  /// not in the set of specified values.
  final String? operator;
  /// Specifies the set of values to check for container exit codes. At most 255 elements are allowed.
  final List<int>? values;

  /// Creates a new [ContainerRestartRuleOnExitCodesPatch].
  /// [operator] Represents the relationship between the container exit code(s) and the specified values. Possible values are: - In: the requirement is satisfied if the container exit code is in the
  /// [values] Specifies the set of values to check for container exit codes. At most 255 elements are allowed.
  ContainerRestartRuleOnExitCodesPatch({
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': ?operator,
      'values': ?values,
    };
  }

  factory ContainerRestartRuleOnExitCodesPatch.fromMap(Map<String, dynamic> map) {
    return ContainerRestartRuleOnExitCodesPatch(
      operator: map['operator'] == null ? null : map['operator'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<int>(),
    );
  }
}

