// ignore_for_file: unused_element, unnecessary_cast

/// The task that is next in line to be executed, if the condition specified evaluated to true.
class GoogleCloudIntegrationsV1alphaNextTaskResponse {
  /// Standard filter expression for this task to become an eligible next task.
  final String condition;

  /// User-provided description intended to give additional business context about the task.
  final String description;

  /// User-provided label that is attached to this edge in the UI.
  final String displayName;

  /// ID of the next task.
  final String taskConfigId;

  /// Task number of the next task.
  final String taskId;

  /// Creates a new [GoogleCloudIntegrationsV1alphaNextTaskResponse].
  /// [condition] Standard filter expression for this task to become an eligible next task.
  /// [description] User-provided description intended to give additional business context about the task.
  /// [displayName] User-provided label that is attached to this edge in the UI.
  /// [taskConfigId] ID of the next task.
  /// [taskId] Task number of the next task.
  GoogleCloudIntegrationsV1alphaNextTaskResponse({
    required this.condition,
    required this.description,
    required this.displayName,
    required this.taskConfigId,
    required this.taskId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['condition'] = condition;
    map['description'] = description;
    map['displayName'] = displayName;
    map['taskConfigId'] = taskConfigId;
    map['taskId'] = taskId;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaNextTaskResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaNextTaskResponse(
      condition: map['condition'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      taskConfigId: map['taskConfigId'] as String,
      taskId: map['taskId'] as String,
    );
  }
}
