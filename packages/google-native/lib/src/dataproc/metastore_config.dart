// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a Metastore configuration.
class MetastoreConfig {
  /// Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[dataproc_region]/services/[service-name]
  final String dataprocMetastoreService;

  /// Creates a new [MetastoreConfig].
  /// [dataprocMetastoreService] Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[dataproc_region]/services/[service-name]
  MetastoreConfig({
    required this.dataprocMetastoreService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataprocMetastoreService'] = dataprocMetastoreService;
    return map;
  }

  factory MetastoreConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreConfig(
      dataprocMetastoreService: map['dataprocMetastoreService'] as String,
    );
  }
}
