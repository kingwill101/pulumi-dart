// ignore_for_file: unused_element, unnecessary_cast

class WorkspaceSettings {
  /// Project IDs for data projects hosted in a workspace.
  final List<String> dataProjectIds;

  /// Creates a new [WorkspaceSettings].
  /// [dataProjectIds] Project IDs for data projects hosted in a workspace.
  WorkspaceSettings({
    required this.dataProjectIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataProjectIds'] = dataProjectIds;
    return map;
  }

  factory WorkspaceSettings.fromMap(Map<String, dynamic> map) {
    return WorkspaceSettings(
      dataProjectIds: (map['dataProjectIds'] as List).cast<String>(),
    );
  }
}
