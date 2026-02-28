// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig {
  /// Required. Resource name of an existing Dataproc Metastore service. Example: * `projects/`
  final String dataprocMetastoreService;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig].
  /// [dataprocMetastoreService] Required. Resource name of an existing Dataproc Metastore service. Example: * `projects/`
  WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig({
    required this.dataprocMetastoreService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataprocMetastoreService'] = dataprocMetastoreService;
    return map;
  }

  factory WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig(
      dataprocMetastoreService: map['dataprocMetastoreService'] as String,
    );
  }
}
