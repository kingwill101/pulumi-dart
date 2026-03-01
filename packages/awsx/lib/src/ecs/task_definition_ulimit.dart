// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionUlimit {
  final int hardLimit;
  final String name;
  final int softLimit;

  /// Creates a new [TaskDefinitionUlimit].
  /// [hardLimit] Required.
  /// [name] Required.
  /// [softLimit] Required.
  TaskDefinitionUlimit({
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

  factory TaskDefinitionUlimit.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionUlimit(
      hardLimit: map['hardLimit'] as int,
      name: map['name'] as String,
      softLimit: map['softLimit'] as int,
    );
  }
}
