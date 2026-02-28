// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigSoftwareConfig {
  /// The Cloud Dataproc image version to use
  /// for the cluster - this controls the sets of software versions
  /// installed onto the nodes when you create clusters. If not specified, defaults to the
  /// latest version. For a list of valid versions see
  /// [Cloud Dataproc versions](https://cloud.google.com/dataproc/docs/concepts/dataproc-versions)
  final String? imageVersion;

  /// The set of optional components to activate on the cluster. See [Available Optional Components](https://cloud.google.com/dataproc/docs/concepts/components/overview#available_optional_components).
  ///
  /// - - -
  final List<String>? optionalComponents;

  /// A list of override and additional properties (key/value pairs)
  /// used to modify various aspects of the common configuration files used when creating
  /// a cluster. For a list of valid properties please see
  /// [Cluster properties](https://cloud.google.com/dataproc/docs/concepts/cluster-properties)
  final Map<String, String>? overrideProperties;

  /// A list of the properties used to set the daemon config files.
  /// This will include any values supplied by the user via `cluster_config.software_config.override_properties`
  final Map<String, String>? properties;

  /// Creates a new [ClusterClusterConfigSoftwareConfig].
  /// [imageVersion] The Cloud Dataproc image version to use
  /// [optionalComponents] The set of optional components to activate on the cluster. See [Available Optional Components](https://cloud.google.com/dataproc/docs/concepts/components/overview#available_optional_components).
  /// [overrideProperties] A list of override and additional properties (key/value pairs)
  /// [properties] A list of the properties used to set the daemon config files.
  ClusterClusterConfigSoftwareConfig({
    this.imageVersion,
    this.optionalComponents,
    this.overrideProperties,
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
    final overridePropertiesValue = overrideProperties;
    if (overridePropertiesValue != null) {
      map['overrideProperties'] = overridePropertiesValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    return map;
  }

  factory ClusterClusterConfigSoftwareConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigSoftwareConfig(
      imageVersion:
          map['imageVersion'] == null ? null : map['imageVersion'] as String,
      optionalComponents: map['optionalComponents'] == null
          ? null
          : (map['optionalComponents'] as List).cast<String>(),
      overrideProperties: map['overrideProperties'] == null
          ? null
          : (map['overrideProperties'] as Map).cast<String, String>(),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
    );
  }
}
