// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'stretched_cluster_config.dart';

/// The set of arguments for Cluster.
class ClusterArgs11 {
  /// Required. The user-provided identifier of the new `Cluster`. This identifier must be unique among clusters within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final Input<String> clusterId;
  final Input<String>? location;

  /// The map of cluster node types in this cluster, where the key is canonical identifier of the node type (corresponds to the `NodeType`).
  final Input<Map<String, String>> nodeTypeConfigs;
  final Input<String> privateCloudId;
  final Input<String>? project;

  /// Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Optional. Configuration of a stretched cluster. Required for clusters that belong to a STRETCHED private cloud.
  final Input<StretchedClusterConfig>? stretchedClusterConfig;

  ClusterArgs11({
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
      map['stretchedClusterConfig'] = Input.mapOptionalInputValue<
              StretchedClusterConfig, Map<String, dynamic>>(
          stretchedClusterConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterArgs11.fromMap(Map<String, dynamic> map) {
    return ClusterArgs11(
      clusterId: Input.asInput<String>(map['clusterId']),
      location: Input.asOptionalInput<String>(map['location']),
      nodeTypeConfigs:
          Input.asInput<Map<String, String>>(map['nodeTypeConfigs']),
      privateCloudId: Input.asInput<String>(map['privateCloudId']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      stretchedClusterConfig: Input.asOptionalInput<StretchedClusterConfig>(
          map['stretchedClusterConfig']),
    );
  }
}
