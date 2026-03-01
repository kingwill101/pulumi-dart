// ignore_for_file: unused_element, unnecessary_cast


/// Task Spec
class TaskSpecResponse {
  /// Name of Task
  final String name;
  /// Task specification
  final dynamic specification;
  /// Target ARM id
  final String? targetId;

  /// Creates a new [TaskSpecResponse].
  /// [name] Name of Task
  /// [specification] Task specification
  /// [targetId] Target ARM id
  TaskSpecResponse({
    required this.name,
    required this.specification,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'specification': specification,
      'targetId': ?targetId,
    };
  }

  factory TaskSpecResponse.fromMap(Map<String, dynamic> map) {
    return TaskSpecResponse(
      name: map['name'] as String,
      specification: map['specification'],
      targetId: map['targetId'] == null ? null : map['targetId'] as String,
    );
  }
}

