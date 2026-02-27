// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stretched_cluster_config.dart';

/// The set of arguments for Cluster.
class ClusterVmwareengineV1Args {
  /// Required. The user-provided identifier of the new `Cluster`. This identifier must be unique among clusters within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String>? location;

  /// The map of cluster node types in this cluster, where the key is canonical identifier of the node type (corresponds to the `NodeType`).
  final pulumi.Input<Map<String, String>> nodeTypeConfigs;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. Configuration of a stretched cluster. Required for clusters that belong to a STRETCHED private cloud.
  final pulumi.Input<StretchedClusterConfig>? stretchedClusterConfig;

  ClusterVmwareengineV1Args({
    required this.clusterId,
    this.location,
    required this.nodeTypeConfigs,
    required this.privateCloudId,
    this.project,
    this.requestId,
    this.stretchedClusterConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['nodeTypeConfigs'] = nodeTypeConfigs;
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final stretchedClusterConfigValue = stretchedClusterConfig;
    if (stretchedClusterConfigValue != null) {
      map['stretchedClusterConfig'] = pulumi.Input.mapOptionalInputValue<
              StretchedClusterConfig, Map<String, dynamic>>(
          stretchedClusterConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterVmwareengineV1Args.fromMap(Map<String, dynamic> map) {
    return ClusterVmwareengineV1Args(
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      nodeTypeConfigs:
          pulumi.Input.asInput<Map<String, String>>(map['nodeTypeConfigs']),
      privateCloudId: pulumi.Input.asInput<String>(map['privateCloudId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      stretchedClusterConfig:
          pulumi.Input.asOptionalInput<StretchedClusterConfig>(
              map['stretchedClusterConfig']),
    );
  }
}
