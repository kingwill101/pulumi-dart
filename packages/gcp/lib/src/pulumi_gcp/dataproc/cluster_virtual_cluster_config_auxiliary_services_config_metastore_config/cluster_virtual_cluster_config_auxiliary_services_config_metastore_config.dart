// ignore_for_file: unused_element, unnecessary_cast

class ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig {
  /// Resource name of an existing Dataproc Metastore service.
  final String? dataprocMetastoreService;

  ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig({
    this.dataprocMetastoreService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataprocMetastoreServiceValue = dataprocMetastoreService;
    if (dataprocMetastoreServiceValue != null) {
      map['dataprocMetastoreService'] = dataprocMetastoreServiceValue;
    }
    return map;
  }

  factory ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig(
      dataprocMetastoreService: map['dataprocMetastoreService'] == null
          ? null
          : map['dataprocMetastoreService'] as String,
    );
  }
}
