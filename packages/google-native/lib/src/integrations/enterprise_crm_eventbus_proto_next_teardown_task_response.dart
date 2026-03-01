// ignore_for_file: unused_element, unnecessary_cast

/// The teardown task that is next in line to be executed. We support only sequential execution of teardown tasks (i.e. no branching).
class EnterpriseCrmEventbusProtoNextTeardownTaskResponse {
  /// Name of the next teardown task.
  final String name;

  /// Creates a new [EnterpriseCrmEventbusProtoNextTeardownTaskResponse].
  /// [name] Name of the next teardown task.
  EnterpriseCrmEventbusProtoNextTeardownTaskResponse({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory EnterpriseCrmEventbusProtoNextTeardownTaskResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoNextTeardownTaskResponse(
      name: map['name'] as String,
    );
  }
}
