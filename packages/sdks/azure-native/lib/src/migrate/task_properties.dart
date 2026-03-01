// ignore_for_file: unused_element, unnecessary_cast


/// Task Properties class.
class TaskProperties {
  /// Task Description
  final String? description;
  /// Task Dislay Name
  final String displayName;
  /// Task Scope
  final String scope;
  /// associated Wave Id
  final String scopeId;
  /// Task Stage
  final String? stage;
  /// Task Status
  final String status;

  /// Creates a new [TaskProperties].
  /// [description] Task Description
  /// [displayName] Task Dislay Name
  /// [scope] Task Scope
  /// [scopeId] associated Wave Id
  /// [stage] Task Stage
  /// [status] Task Status
  TaskProperties({
    this.description,
    required this.displayName,
    required this.scope,
    required this.scopeId,
    this.stage,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'scope': scope,
      'scopeId': scopeId,
      'stage': ?stage,
      'status': status,
    };
  }

  factory TaskProperties.fromMap(Map<String, dynamic> map) {
    return TaskProperties(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      scope: map['scope'] as String,
      scopeId: map['scopeId'] as String,
      stage: map['stage'] == null ? null : map['stage'] as String,
      status: map['status'] as String,
    );
  }
}

