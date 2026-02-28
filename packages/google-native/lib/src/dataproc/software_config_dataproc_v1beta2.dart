// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_config_optional_components_item_dataproc_v1beta2.dart';

/// Specifies the selection and config of software inside the cluster.
class SoftwareConfigDataprocV1beta2 {
  /// Optional. The version of software inside the cluster. It must be one of the supported Dataproc Versions (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as "1.2" (including a subminor version, such as "1.2.29"), or the "preview" version (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.
  final String? imageVersion;

  /// The set of optional components to activate on the cluster.
  final List<SoftwareConfigOptionalComponentsItemDataprocV1beta2>?
      optionalComponents;

  /// Optional. The properties to set on daemon config files.Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. The following are supported prefixes and their mappings: capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp: distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred: mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn: yarn-site.xmlFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  final Map<String, String>? properties;

  /// Creates a new [SoftwareConfigDataprocV1beta2].
  /// [imageVersion] Optional. The version of software inside the cluster. It must be one of the supported Dataproc Versions (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as "1.2" (including a subminor version, such as "1.2.29"), or the "preview" version (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.
  /// [optionalComponents] The set of optional components to activate on the cluster.
  /// [properties] Optional. The properties to set on daemon config files.Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. The following are supported prefixes and their mappings: capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp: distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred: mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn: yarn-site.xmlFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  SoftwareConfigDataprocV1beta2({
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
      map['optionalComponents'] = pulumi.Input.encodeList<
          SoftwareConfigOptionalComponentsItemDataprocV1beta2,
          String>(optionalComponentsValue, (value) => value.value);
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    return map;
  }

  factory SoftwareConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return SoftwareConfigDataprocV1beta2(
      imageVersion:
          map['imageVersion'] == null ? null : map['imageVersion'] as String,
      optionalComponents: map['optionalComponents'] == null
          ? null
          : pulumi.Input.decodeList<
                  SoftwareConfigOptionalComponentsItemDataprocV1beta2>(
              map['optionalComponents'],
              (value) =>
                  SoftwareConfigOptionalComponentsItemDataprocV1beta2.fromValue(
                      value as String)),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
    );
  }
}
