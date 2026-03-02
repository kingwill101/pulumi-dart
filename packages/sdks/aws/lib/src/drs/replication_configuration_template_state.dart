// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_configuration_template_pit_policy.dart';
import 'replication_configuration_template_timeouts.dart';

/// Input properties used for looking up and filtering ReplicationConfigurationTemplate resources.
class ReplicationConfigurationTemplateState {
  /// Replication configuration template ARN.
  final pulumi.Input<String>? arn;
  /// Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.
  final pulumi.Input<bool>? associateDefaultSecurityGroup;
  /// Whether to allow the AWS replication agent to automatically replicate newly added disks.
  final pulumi.Input<bool>? autoReplicateNewDisks;
  /// Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.
  final pulumi.Input<int>? bandwidthThrottling;
  /// Whether to create a Public IP for the Recovery Instance by default.
  final pulumi.Input<bool>? createPublicIp;
  /// Data plane routing mechanism that will be used for replication. Valid values are `PUBLIC_IP` and `PRIVATE_IP`.
  final pulumi.Input<String>? dataPlaneRouting;
  /// Staging Disk EBS volume type to be used during replication. Valid values are `GP2`, `GP3`, `ST1`, or `AUTO`.
  final pulumi.Input<String>? defaultLargeStagingDiskType;
  /// Type of EBS encryption to be used during replication. Valid values are `DEFAULT` and `CUSTOM`.
  final pulumi.Input<String>? ebsEncryption;
  /// ARN of the EBS encryption key to be used during replication.
  final pulumi.Input<String>? ebsEncryptionKeyArn;
  /// Configuration block for Point in time (PIT) policy to manage snapshots taken during replication. See below.
  final pulumi.Input<List<ReplicationConfigurationTemplatePitPolicy>>? pitPolicies;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Instance type to be used for the replication server.
  final pulumi.Input<String>? replicationServerInstanceType;
  /// Security group IDs that will be used by the replication server.
  final pulumi.Input<List<String>>? replicationServersSecurityGroupsIds;
  /// Subnet to be used by the replication staging area.
  final pulumi.Input<String>? stagingAreaSubnetId;
  /// Set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.
  final pulumi.Input<Map<String, String>>? stagingAreaTags;
  /// Set of tags to be associated with the Replication Configuration Template resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ReplicationConfigurationTemplateTimeouts>? timeouts;
  /// Whether to use a dedicated Replication Server in the replication staging area.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool>? useDedicatedReplicationServer;

  /// Creates a new [ReplicationConfigurationTemplateState].
  /// [arn] Replication configuration template ARN.
  /// [associateDefaultSecurityGroup] Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.
  /// [autoReplicateNewDisks] Whether to allow the AWS replication agent to automatically replicate newly added disks.
  /// [bandwidthThrottling] Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.
  /// [createPublicIp] Whether to create a Public IP for the Recovery Instance by default.
  /// [dataPlaneRouting] Data plane routing mechanism that will be used for replication. Valid values are `PUBLIC_IP` and `PRIVATE_IP`.
  /// [defaultLargeStagingDiskType] Staging Disk EBS volume type to be used during replication. Valid values are `GP2`, `GP3`, `ST1`, or `AUTO`.
  /// [ebsEncryption] Type of EBS encryption to be used during replication. Valid values are `DEFAULT` and `CUSTOM`.
  /// [ebsEncryptionKeyArn] ARN of the EBS encryption key to be used during replication.
  /// [pitPolicies] Configuration block for Point in time (PIT) policy to manage snapshots taken during replication. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationServerInstanceType] Instance type to be used for the replication server.
  /// [replicationServersSecurityGroupsIds] Security group IDs that will be used by the replication server.
  /// [stagingAreaSubnetId] Subnet to be used by the replication staging area.
  /// [stagingAreaTags] Set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.
  /// [tags] Set of tags to be associated with the Replication Configuration Template resource.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [useDedicatedReplicationServer] Whether to use a dedicated Replication Server in the replication staging area.
  ReplicationConfigurationTemplateState({
    this.arn,
    this.associateDefaultSecurityGroup,
    this.autoReplicateNewDisks,
    this.bandwidthThrottling,
    this.createPublicIp,
    this.dataPlaneRouting,
    this.defaultLargeStagingDiskType,
    this.ebsEncryption,
    this.ebsEncryptionKeyArn,
    this.pitPolicies,
    this.region,
    this.replicationServerInstanceType,
    this.replicationServersSecurityGroupsIds,
    this.stagingAreaSubnetId,
    this.stagingAreaTags,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.useDedicatedReplicationServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associateDefaultSecurityGroup': ?associateDefaultSecurityGroup,
      'autoReplicateNewDisks': ?autoReplicateNewDisks,
      'bandwidthThrottling': ?bandwidthThrottling,
      'createPublicIp': ?createPublicIp,
      'dataPlaneRouting': ?dataPlaneRouting,
      'defaultLargeStagingDiskType': ?defaultLargeStagingDiskType,
      'ebsEncryption': ?ebsEncryption,
      'ebsEncryptionKeyArn': ?ebsEncryptionKeyArn,
      'pitPolicies': ?pulumi.Input.mapOptionalInputValue<List<ReplicationConfigurationTemplatePitPolicy>, List<Map<String, dynamic>>>(pitPolicies, (value) => pulumi.Input.encodeList<ReplicationConfigurationTemplatePitPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'replicationServerInstanceType': ?replicationServerInstanceType,
      'replicationServersSecurityGroupsIds': ?replicationServersSecurityGroupsIds,
      'stagingAreaSubnetId': ?stagingAreaSubnetId,
      'stagingAreaTags': ?stagingAreaTags,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ReplicationConfigurationTemplateTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'useDedicatedReplicationServer': ?useDedicatedReplicationServer,
    };
  }

  factory ReplicationConfigurationTemplateState.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationTemplateState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      associateDefaultSecurityGroup: map['associateDefaultSecurityGroup'] == null ? null : (map['associateDefaultSecurityGroup'] as bool).input(),
      autoReplicateNewDisks: map['autoReplicateNewDisks'] == null ? null : (map['autoReplicateNewDisks'] as bool).input(),
      bandwidthThrottling: map['bandwidthThrottling'] == null ? null : (map['bandwidthThrottling'] as int).input(),
      createPublicIp: map['createPublicIp'] == null ? null : (map['createPublicIp'] as bool).input(),
      dataPlaneRouting: map['dataPlaneRouting'] == null ? null : (map['dataPlaneRouting'] as String).input(),
      defaultLargeStagingDiskType: map['defaultLargeStagingDiskType'] == null ? null : (map['defaultLargeStagingDiskType'] as String).input(),
      ebsEncryption: map['ebsEncryption'] == null ? null : (map['ebsEncryption'] as String).input(),
      ebsEncryptionKeyArn: map['ebsEncryptionKeyArn'] == null ? null : (map['ebsEncryptionKeyArn'] as String).input(),
      pitPolicies: map['pitPolicies'] == null ? null : (pulumi.Input.decodeList<ReplicationConfigurationTemplatePitPolicy>(map['pitPolicies'], (value) => ReplicationConfigurationTemplatePitPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      replicationServerInstanceType: map['replicationServerInstanceType'] == null ? null : (map['replicationServerInstanceType'] as String).input(),
      replicationServersSecurityGroupsIds: map['replicationServersSecurityGroupsIds'] == null ? null : ((map['replicationServersSecurityGroupsIds'] as List).cast<String>()).input(),
      stagingAreaSubnetId: map['stagingAreaSubnetId'] == null ? null : (map['stagingAreaSubnetId'] as String).input(),
      stagingAreaTags: map['stagingAreaTags'] == null ? null : ((map['stagingAreaTags'] as Map).cast<String, String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (ReplicationConfigurationTemplateTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      useDedicatedReplicationServer: map['useDedicatedReplicationServer'] == null ? null : (map['useDedicatedReplicationServer'] as bool).input(),
    );
  }
}

