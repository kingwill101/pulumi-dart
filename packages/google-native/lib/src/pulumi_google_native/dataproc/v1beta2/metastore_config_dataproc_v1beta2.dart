// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a Metastore configuration.
class MetastoreConfigDataprocV1beta2 {
  /// Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[dataproc_region]/services/[service-name]
  final String dataprocMetastoreService;

  MetastoreConfigDataprocV1beta2({
    required this.dataprocMetastoreService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataprocMetastoreService'] = dataprocMetastoreService;
    return map;
  }

  factory MetastoreConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return MetastoreConfigDataprocV1beta2(
      dataprocMetastoreService: map['dataprocMetastoreService'] as String,
    );
  }
}
