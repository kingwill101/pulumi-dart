// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_private_cloud_management_cluster_autoscaling_setting/get_private_cloud_management_cluster_autoscaling_setting.dart';
import '../get_private_cloud_management_cluster_node_type_config/get_private_cloud_management_cluster_node_type_config.dart';
import '../get_private_cloud_management_cluster_stretched_cluster_config/get_private_cloud_management_cluster_stretched_cluster_config.dart';

class GetPrivateCloudManagementCluster {
  /// Configuration of the autoscaling applied to this cluster
  /// Private cloud must have a minimum of 3 nodes to add autoscale settings
  final List<GetPrivateCloudManagementClusterAutoscalingSetting>
      autoscalingSettings;

  /// The user-provided identifier of the new Cluster. The identifier must meet the following requirements:
  /// * Only contains 1-63 alphanumeric characters and hyphens
  /// * Begins with an alphabetical character
  /// * Ends with a non-hyphen character
  /// * Not formatted as a UUID
  /// * Complies with RFC 1034 (https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final String clusterId;

  /// The map of cluster node types in this cluster,
  /// where the key is canonical identifier of the node type (corresponds to the NodeType).
  final List<GetPrivateCloudManagementClusterNodeTypeConfig> nodeTypeConfigs;

  /// The stretched cluster configuration for the private cloud.
  final List<GetPrivateCloudManagementClusterStretchedClusterConfig>
      stretchedClusterConfigs;

  GetPrivateCloudManagementCluster({
    required this.autoscalingSettings,
    required this.clusterId,
    required this.nodeTypeConfigs,
    required this.stretchedClusterConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingSettings'] = Input.encodeList<
        GetPrivateCloudManagementClusterAutoscalingSetting,
        Map<String, dynamic>>(autoscalingSettings, (value) => value.toMap());
    map['clusterId'] = clusterId;
    map['nodeTypeConfigs'] = Input.encodeList<
        GetPrivateCloudManagementClusterNodeTypeConfig,
        Map<String, dynamic>>(nodeTypeConfigs, (value) => value.toMap());
    map['stretchedClusterConfigs'] = Input.encodeList<
            GetPrivateCloudManagementClusterStretchedClusterConfig,
            Map<String, dynamic>>(
        stretchedClusterConfigs, (value) => value.toMap());
    return map;
  }

  factory GetPrivateCloudManagementCluster.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudManagementCluster(
      autoscalingSettings:
          Input.decodeList<GetPrivateCloudManagementClusterAutoscalingSetting>(
              map['autoscalingSettings'],
              (value) =>
                  GetPrivateCloudManagementClusterAutoscalingSetting.fromMap(
                      (value as Map).cast<String, dynamic>())),
      clusterId: map['clusterId'] as String,
      nodeTypeConfigs:
          Input.decodeList<GetPrivateCloudManagementClusterNodeTypeConfig>(
              map['nodeTypeConfigs'],
              (value) => GetPrivateCloudManagementClusterNodeTypeConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      stretchedClusterConfigs: Input.decodeList<
              GetPrivateCloudManagementClusterStretchedClusterConfig>(
          map['stretchedClusterConfigs'],
          (value) =>
              GetPrivateCloudManagementClusterStretchedClusterConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
