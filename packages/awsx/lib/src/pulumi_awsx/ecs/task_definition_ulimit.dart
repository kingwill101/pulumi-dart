// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionUlimit {
  final int hardLimit;
  final String name;
  final int softLimit;

  TaskDefinitionUlimit({
    required this.hardLimit,
    required this.name,
    required this.softLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hardLimit'] = hardLimit;
    map['name'] = name;
    map['softLimit'] = softLimit;
    return map;
  }

  factory TaskDefinitionUlimit.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionUlimit(
      hardLimit: map['hardLimit'] as int,
      name: map['name'] as String,
      softLimit: map['softLimit'] as int,
    );
  }
}
