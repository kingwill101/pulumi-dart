// ignore_for_file: unused_element, unnecessary_cast


class AgentcoreAgentRuntimeTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? create;
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.
  final String? delete;
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? update;

  /// Creates a new [AgentcoreAgentRuntimeTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  /// [delete] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.
  /// [update] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  AgentcoreAgentRuntimeTimeouts({
    this.create,
    this.delete,
    this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
      'delete': ?delete,
      'update': ?update,
    };
  }

  factory AgentcoreAgentRuntimeTimeouts.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeTimeouts(
      create: map['create'] == null ? null : map['create'] as String,
      delete: map['delete'] == null ? null : map['delete'] as String,
      update: map['update'] == null ? null : map['update'] as String,
    );
  }
}

