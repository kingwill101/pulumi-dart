// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_virtual_cluster_config_auxiliary_services_config/cluster_virtual_cluster_config_auxiliary_services_config.dart';
import '../cluster_virtual_cluster_config_kubernetes_cluster_config/cluster_virtual_cluster_config_kubernetes_cluster_config.dart';

class ClusterVirtualClusterConfig {
  /// Configuration of auxiliary services used by this cluster.
  /// Structure defined below.
  final ClusterVirtualClusterConfigAuxiliaryServicesConfig?
      auxiliaryServicesConfig;

  /// The configuration for running the Dataproc cluster on Kubernetes.
  /// Structure defined below.
  /// - - -
  final ClusterVirtualClusterConfigKubernetesClusterConfig?
      kubernetesClusterConfig;

  /// The Cloud Storage staging bucket used to stage files,
  /// such as Hadoop jars, between client machines and the cluster.
  /// Note: If you don't explicitly specify a <span pulumi-lang-nodejs="`stagingBucket`" pulumi-lang-dotnet="`StagingBucket`" pulumi-lang-go="`stagingBucket`" pulumi-lang-python="`staging_bucket`" pulumi-lang-yaml="`stagingBucket`" pulumi-lang-java="`stagingBucket`">`staging_bucket`</span>
  /// then GCP will auto create / assign one for you. However, you are not guaranteed
  /// an auto generated bucket which is solely dedicated to your cluster; it may be shared
  /// with other clusters in the same region/zone also choosing to use the auto generation
  /// option.
  final String? stagingBucket;

  ClusterVirtualClusterConfig({
    this.auxiliaryServicesConfig,
    this.kubernetesClusterConfig,
    this.stagingBucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auxiliaryServicesConfigValue = auxiliaryServicesConfig;
    if (auxiliaryServicesConfigValue != null) {
      map['auxiliaryServicesConfig'] = auxiliaryServicesConfigValue.toMap();
    }
    final kubernetesClusterConfigValue = kubernetesClusterConfig;
    if (kubernetesClusterConfigValue != null) {
      map['kubernetesClusterConfig'] = kubernetesClusterConfigValue.toMap();
    }
    final stagingBucketValue = stagingBucket;
    if (stagingBucketValue != null) {
      map['stagingBucket'] = stagingBucketValue;
    }
    return map;
  }

  factory ClusterVirtualClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterVirtualClusterConfig(
      auxiliaryServicesConfig: map['auxiliaryServicesConfig'] == null
          ? null
          : ClusterVirtualClusterConfigAuxiliaryServicesConfig.fromMap(
              (map['auxiliaryServicesConfig'] as Map).cast<String, dynamic>()),
      kubernetesClusterConfig: map['kubernetesClusterConfig'] == null
          ? null
          : ClusterVirtualClusterConfigKubernetesClusterConfig.fromMap(
              (map['kubernetesClusterConfig'] as Map).cast<String, dynamic>()),
      stagingBucket:
          map['stagingBucket'] == null ? null : map['stagingBucket'] as String,
    );
  }
}
