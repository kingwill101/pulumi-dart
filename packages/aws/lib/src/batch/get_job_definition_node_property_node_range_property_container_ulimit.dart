// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit {
  /// The hard limit for the ulimit type.
  final int hardLimit;

  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final String name;

  /// The soft limit for the ulimit type.
  final int softLimit;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit].
  /// [hardLimit] The hard limit for the ulimit type.
  /// [name] The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [softLimit] The soft limit for the ulimit type.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit({
    required this.hardLimit,
    required this.name,
    required this.softLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hardLimit': hardLimit,
      'name': name,
      'softLimit': softLimit,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit(
      hardLimit: map['hardLimit'] as int,
      name: map['name'] as String,
      softLimit: map['softLimit'] as int,
    );
  }
}
