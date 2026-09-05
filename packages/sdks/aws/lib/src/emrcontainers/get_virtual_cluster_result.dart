// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_cluster_container_provider.dart';

/// Result data returned by getVirtualCluster.
class GetVirtualClusterResult {
  /// ARN of the cluster.
  final String? arn;
  /// Nested attribute containing information about the underlying container provider (EKS cluster) for your EMR Containers cluster.
  final List<GetVirtualClusterContainerProvider>? containerProviders;
  /// Unix epoch time stamp in seconds for when the cluster was created.
  final String? createdAt;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the cluster.
  final String? name;
  final String? region;
  /// Status of the EKS cluster. One of `RUNNING`, `TERMINATING`, `TERMINATED`, `ARRESTED`.
  final String? state;
  /// Key-value mapping of resource tags.
  final Map<String, String>? tags;
  final String? virtualClusterId;

  /// Creates a new [GetVirtualClusterResult].
  /// [arn] ARN of the cluster.
  /// [containerProviders] Nested attribute containing information about the underlying container provider (EKS cluster) for your EMR Containers cluster.
  /// [createdAt] Unix epoch time stamp in seconds for when the cluster was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the cluster.
  /// [region] Optional.
  /// [state] Status of the EKS cluster. One of `RUNNING`, `TERMINATING`, `TERMINATED`, `ARRESTED`.
  /// [tags] Key-value mapping of resource tags.
  /// [virtualClusterId] Optional.
  const GetVirtualClusterResult({
    this.arn,
    this.containerProviders,
    this.createdAt,
    this.id,
    this.name,
    this.region,
    this.state,
    this.tags,
    this.virtualClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'containerProviders': ?(() { final guardedValue = containerProviders; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualClusterContainerProvider, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdAt': ?createdAt,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'virtualClusterId': ?virtualClusterId,
    };
  }

  factory GetVirtualClusterResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualClusterResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerProviders: (() { final guardedValue = map['containerProviders']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualClusterContainerProvider>(guardedValue, (value) => GetVirtualClusterContainerProvider.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      virtualClusterId: (() { final guardedValue = map['virtualClusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
