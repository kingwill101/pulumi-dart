// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigMetastoreConfig {
  /// Resource name of an existing Dataproc Metastore service.
  ///
  /// Only resource names including projectid and location (region) are valid. Examples:
  ///
  /// `projects/[projectId]/locations/[dataproc_region]/services/[service-name]`
  final String dataprocMetastoreService;

  /// Creates a new [ClusterClusterConfigMetastoreConfig].
  /// [dataprocMetastoreService] Resource name of an existing Dataproc Metastore service.
  ClusterClusterConfigMetastoreConfig({required this.dataprocMetastoreService});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocMetastoreService': dataprocMetastoreService,
    };
  }

  factory ClusterClusterConfigMetastoreConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterClusterConfigMetastoreConfig(
      dataprocMetastoreService: map['dataprocMetastoreService'] as String,
    );
  }
}
