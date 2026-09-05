// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cluster_certificate.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The list of cluster certificates.
  final List<GetClusterClusterCertificate>? clusterCertificates;
  final String? clusterId;
  final String? clusterState;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// ID of the security group associated with the CloudHSM cluster.
  final String? securityGroupId;
  /// IDs of subnets in which cluster operates.
  final List<String>? subnetIds;
  /// ID of the VPC that the CloudHSM cluster resides in.
  final String? vpcId;

  /// Creates a new [GetClusterResult].
  /// [clusterCertificates] The list of cluster certificates.
  /// [clusterId] Optional.
  /// [clusterState] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [securityGroupId] ID of the security group associated with the CloudHSM cluster.
  /// [subnetIds] IDs of subnets in which cluster operates.
  /// [vpcId] ID of the VPC that the CloudHSM cluster resides in.
  const GetClusterResult({
    this.clusterCertificates,
    this.clusterId,
    this.clusterState,
    this.id,
    this.region,
    this.securityGroupId,
    this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterCertificates': ?(() { final guardedValue = clusterCertificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterClusterCertificate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterId': ?clusterId,
      'clusterState': ?clusterState,
      'id': ?id,
      'region': ?region,
      'securityGroupId': ?securityGroupId,
      'subnetIds': ?subnetIds,
      'vpcId': ?vpcId,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      clusterCertificates: (() { final guardedValue = map['clusterCertificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterClusterCertificate>(guardedValue, (value) => GetClusterClusterCertificate.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterState: (() { final guardedValue = map['clusterState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
