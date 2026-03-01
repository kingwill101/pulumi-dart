// ignore_for_file: unused_element, unnecessary_cast

class ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig {
  /// Resource name of an existing Dataproc Metastore service.
  final String? dataprocMetastoreService;

  /// Creates a new [ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig].
  /// [dataprocMetastoreService] Resource name of an existing Dataproc Metastore service.
  ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig({
    this.dataprocMetastoreService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocMetastoreService': ?dataprocMetastoreService,
    };
  }

  factory ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig(
      dataprocMetastoreService: map['dataprocMetastoreService'] == null
          ? null
          : map['dataprocMetastoreService'] as String,
    );
  }
}
