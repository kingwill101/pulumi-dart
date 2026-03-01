// ignore_for_file: unused_element, unnecessary_cast

class ClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig {
  /// The components that should be installed in this Dataproc cluster. The key must be a string from the
  /// KubernetesComponent enumeration. The value is the version of the software to be installed. At least one entry must be specified.
  /// * **NOTE** : `component_version[SPARK]` is mandatory to set, or the creation of the cluster will fail.
  final Map<String, String> componentVersion;

  /// The properties to set on daemon config files. Property keys are specified in prefix:property format,
  /// for example spark:spark.kubernetes.container.image.
  final Map<String, String>? properties;

  /// Creates a new [ClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig].
  /// [componentVersion] The components that should be installed in this Dataproc cluster. The key must be a string from the
  /// [properties] The properties to set on daemon config files. Property keys are specified in prefix:property format,
  ClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig({
    required this.componentVersion,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentVersion': componentVersion,
      'properties': ?properties,
    };
  }

  factory ClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig(
      componentVersion: (map['componentVersion'] as Map).cast<String, String>(),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
    );
  }
}
