// ignore_for_file: unused_element, unnecessary_cast

class BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel {
  /// The key of the kubernetes label.
  final String key;

  /// The value of the Label.
  final String value;

  BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel.fromMap(
      Map<String, dynamic> map) {
    return BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
