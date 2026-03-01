// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the selection and config of software inside the cluster.
class SoftwareConfigResponse {
  /// Optional. The version of software inside the cluster. It must be one of the supported Dataproc Versions (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as "1.2" (including a subminor version, such as "1.2.29"), or the "preview" version (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.
  final String imageVersion;

  /// Optional. The set of components to activate on the cluster.
  final List<String> optionalComponents;

  /// Optional. The properties to set on daemon config files.Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. The following are supported prefixes and their mappings: capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp: distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred: mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn: yarn-site.xmlFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  final Map<String, String> properties;

  /// Creates a new [SoftwareConfigResponse].
  /// [imageVersion] Optional. The version of software inside the cluster. It must be one of the supported Dataproc Versions (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as "1.2" (including a subminor version, such as "1.2.29"), or the "preview" version (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.
  /// [optionalComponents] Optional. The set of components to activate on the cluster.
  /// [properties] Optional. The properties to set on daemon config files.Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. The following are supported prefixes and their mappings: capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp: distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred: mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn: yarn-site.xmlFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  SoftwareConfigResponse({
    required this.imageVersion,
    required this.optionalComponents,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageVersion': imageVersion,
      'optionalComponents': optionalComponents,
      'properties': properties,
    };
  }

  factory SoftwareConfigResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareConfigResponse(
      imageVersion: map['imageVersion'] as String,
      optionalComponents: (map['optionalComponents'] as List).cast<String>(),
      properties: (map['properties'] as Map).cast<String, String>(),
    );
  }
}
