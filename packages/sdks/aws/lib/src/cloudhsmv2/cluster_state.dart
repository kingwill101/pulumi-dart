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
  ClusterState({
    pulumi.Output<List<ClusterClusterCertificate>>? clusterCertificates,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? clusterState,
    pulumi.Output<String>? hsmType,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? sourceBackupIdentifier,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      clusterCertificates = pulumi.Input.asOptionalInput<List<ClusterClusterCertificate>>(clusterCertificates),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      clusterState = pulumi.Input.asOptionalInput<String>(clusterState),
      hsmType = pulumi.Input.asOptionalInput<String>(hsmType),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      sourceBackupIdentifier = pulumi.Input.asOptionalInput<String>(sourceBackupIdentifier),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      clusterCertificates: map['clusterCertificates'] == null ? null : pulumi.Output.create<List<ClusterClusterCertificate>>(pulumi.Input.decodeList<ClusterClusterCertificate>(map['clusterCertificates'], (value) => ClusterClusterCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      clusterState: map['clusterState'] == null ? null : pulumi.Output.create<String>(map['clusterState'] as String),
      hsmType: map['hsmType'] == null ? null : pulumi.Output.create<String>(map['hsmType'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      sourceBackupIdentifier: map['sourceBackupIdentifier'] == null ? null : pulumi.Output.create<String>(map['sourceBackupIdentifier'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

