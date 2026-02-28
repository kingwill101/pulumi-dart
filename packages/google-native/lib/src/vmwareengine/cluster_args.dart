// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stretched_cluster_config.dart';

/// {@template pulumi_vmwareengine_v1_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_cluster_args_doc}
class ClusterArgs {
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

  /// Creates a new [ClusterArgs].
  /// [clusterId] Required. The user-provided identifier of the new `Cluster`. This identifier must be unique among clusters within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// [location] Optional.
  /// [nodeTypeConfigs] The map of cluster node types in this cluster, where the key is canonical identifier of the node type (corresponds to the `NodeType`).
  /// [privateCloudId] Required.
  /// [project] Optional.
  /// [requestId] Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [stretchedClusterConfig] Optional. Configuration of a stretched cluster. Required for clusters that belong to a STRETCHED private cloud.
  ClusterArgs({
    required String clusterId,
    String? location,
    required Map<String, String> nodeTypeConfigs,
    required String privateCloudId,
    String? project,
    String? requestId,
    StretchedClusterConfig? stretchedClusterConfig,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      location = pulumi.Input.asOptionalInput<String>(location),
      nodeTypeConfigs = pulumi.Input.asInput<Map<String, String>>(nodeTypeConfigs),
      privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      stretchedClusterConfig = pulumi.Input.asOptionalInput<StretchedClusterConfig>(stretchedClusterConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': ?location,
      'nodeTypeConfigs': nodeTypeConfigs,
      'privateCloudId': privateCloudId,
      'project': ?project,
      'requestId': ?requestId,
      'stretchedClusterConfig': ?pulumi.Input.mapOptionalInputValue<StretchedClusterConfig, Map<String, dynamic>>(stretchedClusterConfig, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      clusterId: map['clusterId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      nodeTypeConfigs: (map['nodeTypeConfigs'] as Map).cast<String, String>(),
      privateCloudId: map['privateCloudId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      stretchedClusterConfig: map['stretchedClusterConfig'] == null ? null : StretchedClusterConfig.fromMap((map['stretchedClusterConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

