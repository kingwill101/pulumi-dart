// ignore_for_file: unused_element, unnecessary_cast

/// The task that is next in line to be executed, if the condition specified evaluated to true.
class GoogleCloudIntegrationsV1alphaNextTask {
  /// Standard filter expression for this task to become an eligible next task.
  final String? condition;

  /// User-provided description intended to give additional business context about the task.
  final String? description;

  /// User-provided label that is attached to this edge in the UI.
  final String? displayName;

  /// ID of the next task.
  final String? taskConfigId;

  /// Task number of the next task.
  final String? taskId;

  GoogleCloudIntegrationsV1alphaNextTask({
    this.condition,
    this.description,
    this.displayName,
    this.taskConfigId,
    this.taskId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final taskConfigIdValue = taskConfigId;
    if (taskConfigIdValue != null) {
      map['taskConfigId'] = taskConfigIdValue;
    }
    final taskIdValue = taskId;
    if (taskIdValue != null) {
      map['taskId'] = taskIdValue;
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaNextTask.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaNextTask(
      condition: map['condition'] == null ? null : map['condition'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      taskConfigId:
          map['taskConfigId'] == null ? null : map['taskConfigId'] as String,
      taskId: map['taskId'] == null ? null : map['taskId'] as String,
    );
  }
}
