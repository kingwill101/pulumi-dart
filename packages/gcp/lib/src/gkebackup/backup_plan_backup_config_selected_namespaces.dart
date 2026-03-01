// ignore_for_file: unused_element, unnecessary_cast


class BackupPlanBackupConfigSelectedNamespaces {
  /// A list of Kubernetes Namespaces.
  final List<String> namespaces;

  /// Creates a new [BackupPlanBackupConfigSelectedNamespaces].
  /// [namespaces] A list of Kubernetes Namespaces.
  BackupPlanBackupConfigSelectedNamespaces({
    required this.namespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaces': namespaces,
    };
  }

  factory BackupPlanBackupConfigSelectedNamespaces.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupConfigSelectedNamespaces(
      namespaces: (map['namespaces'] as List).cast<String>(),
    );
  }
}

