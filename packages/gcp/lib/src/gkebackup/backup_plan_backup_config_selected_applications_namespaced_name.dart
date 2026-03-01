// ignore_for_file: unused_element, unnecessary_cast

class BackupPlanBackupConfigSelectedApplicationsNamespacedName {
  /// The name of a Kubernetes Resource.
  final String name;

  /// The namespace of a Kubernetes Resource.
  final String namespace;

  /// Creates a new [BackupPlanBackupConfigSelectedApplicationsNamespacedName].
  /// [name] The name of a Kubernetes Resource.
  /// [namespace] The namespace of a Kubernetes Resource.
  BackupPlanBackupConfigSelectedApplicationsNamespacedName({
    required this.name,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'namespace': namespace};
  }

  factory BackupPlanBackupConfigSelectedApplicationsNamespacedName.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackupPlanBackupConfigSelectedApplicationsNamespacedName(
      name: map['name'] as String,
      namespace: map['namespace'] as String,
    );
  }
}
