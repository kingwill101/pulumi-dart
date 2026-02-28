// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionDevice {
  final String? containerPath;
  final String? hostPath;
  final List<String>? permissions;

  /// Creates a new [TaskDefinitionDevice].
  /// [containerPath] Optional.
  /// [hostPath] Optional.
  /// [permissions] Optional.
  TaskDefinitionDevice({this.containerPath, this.hostPath, this.permissions});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerPathValue = containerPath;
    if (containerPathValue != null) {
      map['containerPath'] = containerPathValue;
    }
    final hostPathValue = hostPath;
    if (hostPathValue != null) {
      map['hostPath'] = hostPathValue;
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue;
    }
    return map;
  }

  factory TaskDefinitionDevice.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionDevice(
      containerPath: map['containerPath'] == null
          ? null
          : map['containerPath'] as String,
      hostPath: map['hostPath'] == null ? null : map['hostPath'] as String,
      permissions: map['permissions'] == null
          ? null
          : (map['permissions'] as List).cast<String>(),
    );
  }
}
