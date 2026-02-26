// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigMetastoreConfig {
  /// Resource name of an existing Dataproc Metastore service.
  ///
  /// Only resource names including projectid and location (region) are valid. Examples:
  ///
  /// `projects/[projectId]/locations/<span pulumi-lang-nodejs="[dataprocRegion]" pulumi-lang-dotnet="[DataprocRegion]" pulumi-lang-go="[dataprocRegion]" pulumi-lang-python="[dataproc_region]" pulumi-lang-yaml="[dataprocRegion]" pulumi-lang-java="[dataprocRegion]">[dataproc_region]</span>/services/[service-name]`
  final String dataprocMetastoreService;

  ClusterClusterConfigMetastoreConfig({
    required this.dataprocMetastoreService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataprocMetastoreService'] = dataprocMetastoreService;
    return map;
  }

  factory ClusterClusterConfigMetastoreConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigMetastoreConfig(
      dataprocMetastoreService: map['dataprocMetastoreService'] as String,
    );
  }
}
