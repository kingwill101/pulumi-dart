// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_cluster_container_provider.dart';

/// Result data returned by getVirtualCluster.
class GetVirtualClusterResult {
  /// ARN of the cluster.
  final String arn;
  /// Nested attribute containing information about the underlying container provider (EKS cluster) for your EMR Containers cluster.
  final List<GetVirtualClusterContainerProvider> containerProviders;
  /// Unix epoch time stamp in seconds for when the cluster was created.
  final String createdAt;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Name of the cluster.
  final String name;
  final String region;
  /// Status of the EKS cluster. One of `RUNNING`, `TERMINATING`, `TERMINATED`, `ARRESTED`.
  final String state;
  /// Key-value mapping of resource tags.
  final Map<String, String> tags;
  final String virtualClusterId;

  /// Creates a new [GetVirtualClusterResult].
  /// [arn] ARN of the cluster.
  /// [containerProviders] Nested attribute containing information about the underlying container provider (EKS cluster) for your EMR Containers cluster.
  /// [createdAt] Unix epoch time stamp in seconds for when the cluster was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the cluster.
  /// [region] Required.
  /// [state] Status of the EKS cluster. One of `RUNNING`, `TERMINATING`, `TERMINATED`, `ARRESTED`.
  /// [tags] Key-value mapping of resource tags.
  /// [virtualClusterId] Required.
  GetVirtualClusterResult({
    required this.arn,
    required this.containerProviders,
    required this.createdAt,
    required this.id,
    required this.name,
    required this.region,
    required this.state,
    required this.tags,
    required this.virtualClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'containerProviders': pulumi.Input.encodeList<GetVirtualClusterContainerProvider, Map<String, dynamic>>(containerProviders, (value) => value.toMap()),
      'createdAt': createdAt,
      'id': id,
      'name': name,
      'region': region,
      'state': state,
      'tags': tags,
      'virtualClusterId': virtualClusterId,
    };
  }

  factory GetVirtualClusterResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualClusterResult(
      arn: map['arn'] as String,
      containerProviders: pulumi.Input.decodeList<GetVirtualClusterContainerProvider>(map['containerProviders'], (value) => GetVirtualClusterContainerProvider.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualClusterId: map['virtualClusterId'] as String,
    );
  }
}

