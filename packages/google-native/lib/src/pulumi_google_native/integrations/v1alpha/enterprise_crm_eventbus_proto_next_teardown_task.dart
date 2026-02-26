// ignore_for_file: unused_element, unnecessary_cast

/// The teardown task that is next in line to be executed. We support only sequential execution of teardown tasks (i.e. no branching).
class EnterpriseCrmEventbusProtoNextTeardownTask {
  /// Name of the next teardown task.
  final String name;

  EnterpriseCrmEventbusProtoNextTeardownTask({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory EnterpriseCrmEventbusProtoNextTeardownTask.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoNextTeardownTask(
      name: map['name'] as String,
    );
  }
}
