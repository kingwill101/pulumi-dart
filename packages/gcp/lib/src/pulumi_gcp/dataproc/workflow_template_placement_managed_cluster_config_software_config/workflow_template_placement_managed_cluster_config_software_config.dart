// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig {
  /// The version of software inside the cluster. It must be one of the supported [Dataproc Versions](https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as "1.2" (including a subminor version, such as "1.2.29"), or the ["preview" version](https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.
  final String? imageVersion;

  /// The set of components to activate on the cluster.
  final List<String>? optionalComponents;

  /// The properties to set on daemon config files.
  ///
  /// Property keys are specified in `prefix:property` format, for example `core:hadoop.tmp.dir`. The following are supported prefixes and their mappings:
  ///
  /// * capacity-scheduler: `capacity-scheduler.xml`
  /// * core: `core-site.xml`
  /// * distcp: `distcp-default.xml`
  /// * hdfs: `hdfs-site.xml`
  /// * hive: `hive-site.xml`
  /// * mapred: `mapred-site.xml`
  /// * pig: `pig.properties`
  /// * spark: `spark-defaults.conf`
  /// * yarn: `yarn-site.xml`
  ///
  ///
  /// For more information, see [Cluster properties](https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  final Map<String, String>? properties;

  WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig({
    this.imageVersion,
    this.optionalComponents,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageVersionValue = imageVersion;
    if (imageVersionValue != null) {
      map['imageVersion'] = imageVersionValue;
    }
    final optionalComponentsValue = optionalComponents;
    if (optionalComponentsValue != null) {
      map['optionalComponents'] = optionalComponentsValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    return map;
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig(
      imageVersion:
          map['imageVersion'] == null ? null : map['imageVersion'] as String,
      optionalComponents: map['optionalComponents'] == null
          ? null
          : (map['optionalComponents'] as List).cast<String>(),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
    );
  }
}
