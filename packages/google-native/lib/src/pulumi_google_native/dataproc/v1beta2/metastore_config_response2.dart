// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a Metastore configuration.
class MetastoreConfigResponse2 {
  /// Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[dataproc_region]/services/[service-name]
  final String dataprocMetastoreService;

  MetastoreConfigResponse2({
    required this.dataprocMetastoreService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataprocMetastoreService'] = dataprocMetastoreService;
    return map;
  }

  factory MetastoreConfigResponse2.fromMap(Map<String, dynamic> map) {
    return MetastoreConfigResponse2(
      dataprocMetastoreService: map['dataprocMetastoreService'] as String,
    );
  }
}
