// ignore_for_file: unused_element, unnecessary_cast

/// The software configuration for this Dataproc cluster running on Kubernetes.
class KubernetesSoftwareConfig {
  /// The components that should be installed in this Dataproc cluster. The key must be a string from the KubernetesComponent enumeration. The value is the version of the software to be installed. At least one entry must be specified.
  final Map<String, String>? componentVersion;

  /// The properties to set on daemon config files.Property keys are specified in prefix:property format, for example spark:spark.kubernetes.container.image. The following are supported prefixes and their mappings: spark: spark-defaults.confFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  final Map<String, String>? properties;

  /// Creates a new [KubernetesSoftwareConfig].
  /// [componentVersion] The components that should be installed in this Dataproc cluster. The key must be a string from the KubernetesComponent enumeration. The value is the version of the software to be installed. At least one entry must be specified.
  /// [properties] The properties to set on daemon config files.Property keys are specified in prefix:property format, for example spark:spark.kubernetes.container.image. The following are supported prefixes and their mappings: spark: spark-defaults.confFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  KubernetesSoftwareConfig({
    this.componentVersion,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final componentVersionValue = componentVersion;
    if (componentVersionValue != null) {
      map['componentVersion'] = componentVersionValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    return map;
  }

  factory KubernetesSoftwareConfig.fromMap(Map<String, dynamic> map) {
    return KubernetesSoftwareConfig(
      componentVersion: map['componentVersion'] == null
          ? null
          : (map['componentVersion'] as Map).cast<String, String>(),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
    );
  }
}
