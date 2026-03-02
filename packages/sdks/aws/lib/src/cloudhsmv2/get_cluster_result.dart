// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cluster_certificate.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The list of cluster certificates.
  final List<GetClusterClusterCertificate> clusterCertificates;
  final String clusterId;
  final String clusterState;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// ID of the security group associated with the CloudHSM cluster.
  final String securityGroupId;
  /// IDs of subnets in which cluster operates.
  final List<String> subnetIds;
  /// ID of the VPC that the CloudHSM cluster resides in.
  final String vpcId;

  /// Creates a new [GetClusterResult].
  /// [clusterCertificates] The list of cluster certificates.
  /// [clusterId] Required.
  /// [clusterState] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [securityGroupId] ID of the security group associated with the CloudHSM cluster.
  /// [subnetIds] IDs of subnets in which cluster operates.
  /// [vpcId] ID of the VPC that the CloudHSM cluster resides in.
  GetClusterResult({
    required this.clusterCertificates,
    required this.clusterId,
    required this.clusterState,
    required this.id,
    required this.region,
    required this.securityGroupId,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterCertificates': pulumi.Input.encodeList<GetClusterClusterCertificate, Map<String, dynamic>>(clusterCertificates, (value) => value.toMap()),
      'clusterId': clusterId,
      'clusterState': clusterState,
      'id': id,
      'region': region,
      'securityGroupId': securityGroupId,
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      clusterCertificates: pulumi.Input.decodeList<GetClusterClusterCertificate>(map['clusterCertificates']!, (value) => GetClusterClusterCertificate.fromMap((value as Map).cast<String, dynamic>())),
      clusterId: map['clusterId'] as String,
      clusterState: map['clusterState'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      securityGroupId: map['securityGroupId'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

