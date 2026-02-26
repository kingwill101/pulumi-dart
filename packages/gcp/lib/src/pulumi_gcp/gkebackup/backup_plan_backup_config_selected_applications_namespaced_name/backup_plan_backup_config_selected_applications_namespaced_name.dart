// ignore_for_file: unused_element, unnecessary_cast

class BackupPlanBackupConfigSelectedApplicationsNamespacedName {
  /// The name of a Kubernetes Resource.
  final String name;

  /// The namespace of a Kubernetes Resource.
  final String namespace;

  BackupPlanBackupConfigSelectedApplicationsNamespacedName({
    required this.name,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['namespace'] = namespace;
    return map;
  }

  factory BackupPlanBackupConfigSelectedApplicationsNamespacedName.fromMap(
      Map<String, dynamic> map) {
    return BackupPlanBackupConfigSelectedApplicationsNamespacedName(
      name: map['name'] as String,
      namespace: map['namespace'] as String,
    );
  }
}
