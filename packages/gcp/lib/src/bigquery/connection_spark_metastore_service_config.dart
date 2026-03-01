// ignore_for_file: unused_element, unnecessary_cast

class ConnectionSparkMetastoreServiceConfig {
  /// Resource name of an existing Dataproc Metastore service in the form of projects/[projectId]/locations/[region]/services/[serviceId].
  final String? metastoreService;

  /// Creates a new [ConnectionSparkMetastoreServiceConfig].
  /// [metastoreService] Resource name of an existing Dataproc Metastore service in the form of projects/[projectId]/locations/[region]/services/[serviceId].
  ConnectionSparkMetastoreServiceConfig({this.metastoreService});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metastoreService': ?metastoreService};
  }

  factory ConnectionSparkMetastoreServiceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionSparkMetastoreServiceConfig(
      metastoreService: map['metastoreService'] == null
          ? null
          : map['metastoreService'] as String,
    );
  }
}
