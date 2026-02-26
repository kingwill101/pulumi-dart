// ignore_for_file: unused_element, unnecessary_cast

class BackupPlanBackupConfigSelectedNamespaces {
  /// A list of Kubernetes Namespaces.
  final List<String> namespaces;

  BackupPlanBackupConfigSelectedNamespaces({
    required this.namespaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespaces'] = namespaces;
    return map;
  }

  factory BackupPlanBackupConfigSelectedNamespaces.fromMap(
      Map<String, dynamic> map) {
    return BackupPlanBackupConfigSelectedNamespaces(
      namespaces: (map['namespaces'] as List).cast<String>(),
    );
  }
}
