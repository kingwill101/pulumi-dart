// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_certificate.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// The list of cluster certificates.
  final pulumi.Input<List<ClusterClusterCertificate>>? clusterCertificates;
  /// The id of the CloudHSM cluster.
  final pulumi.Input<String>? clusterId;
  /// The state of the CloudHSM cluster.
  final pulumi.Input<String>? clusterState;
  /// The type of HSM module in the cluster. Currently, `hsm1.medium` and `hsm2m.medium` are supported.
  final pulumi.Input<String>? hsmType;
  /// The mode to use in the cluster. The allowed values are `FIPS` and `NON_FIPS`. This field is required if `hsm_type` is `hsm2m.medium`.
  final pulumi.Input<String>? mode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the security group associated with the CloudHSM cluster.
  final pulumi.Input<String>? securityGroupId;
  /// ID of Cloud HSM v2 cluster backup to be restored.
  final pulumi.Input<String>? sourceBackupIdentifier;
  /// The IDs of subnets in which cluster will operate.
  final pulumi.Input<List<String>>? subnetIds;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The id of the VPC that the CloudHSM cluster resides in.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ClusterState].
  /// [clusterCertificates] The list of cluster certificates.
  /// [clusterId] The id of the CloudHSM cluster.
  /// [clusterState] The state of the CloudHSM cluster.
  /// [hsmType] The type of HSM module in the cluster. Currently, `hsm1.medium` and `hsm2m.medium` are supported.
  /// [mode] The mode to use in the cluster. The allowed values are `FIPS` and `NON_FIPS`. This field is required if `hsm_type` is `hsm2m.medium`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] The ID of the security group associated with the CloudHSM cluster.
  /// [sourceBackupIdentifier] ID of Cloud HSM v2 cluster backup to be restored.
  /// [subnetIds] The IDs of subnets in which cluster will operate.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] The id of the VPC that the CloudHSM cluster resides in.
  const ClusterState({
    this.clusterCertificates,
    this.clusterId,
    this.clusterState,
    this.hsmType,
    this.mode,
    this.region,
    this.securityGroupId,
    this.sourceBackupIdentifier,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterCertificates': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterCertificate>, List<Map<String, dynamic>>>(clusterCertificates, (value) => pulumi.Input.encodeList<ClusterClusterCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterId': ?clusterId,
      'clusterState': ?clusterState,
      'hsmType': ?hsmType,
      'mode': ?mode,
      'region': ?region,
      'securityGroupId': ?securityGroupId,
      'sourceBackupIdentifier': ?sourceBackupIdentifier,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      clusterCertificates: (() { final guardedValue = map['clusterCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterCertificate>(guardedValue, (value) => ClusterClusterCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterState: (() { final guardedValue = map['clusterState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hsmType: (() { final guardedValue = map['hsmType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceBackupIdentifier: (() { final guardedValue = map['sourceBackupIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

