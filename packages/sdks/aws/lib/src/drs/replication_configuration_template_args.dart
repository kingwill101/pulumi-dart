// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_configuration_template_pit_policy.dart';
import 'replication_configuration_template_timeouts.dart';

/// {@template pulumi_drs_replication_configuration_template_replication_configuration_template_args_doc}
/// The set of arguments for ReplicationConfigurationTemplate.
/// {@endtemplate}
/// {@macro pulumi_drs_replication_configuration_template_replication_configuration_template_args_doc}
class ReplicationConfigurationTemplateArgs {
  /// Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.
  final pulumi.Input<bool> associateDefaultSecurityGroup;
  /// Whether to allow the AWS replication agent to automatically replicate newly added disks.
  final pulumi.Input<bool>? autoReplicateNewDisks;
  /// Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.
  final pulumi.Input<int> bandwidthThrottling;
  /// Whether to create a Public IP for the Recovery Instance by default.
  final pulumi.Input<bool> createPublicIp;
  /// Data plane routing mechanism that will be used for replication. Valid values are `PUBLIC_IP` and `PRIVATE_IP`.
  final pulumi.Input<String> dataPlaneRouting;
  /// Staging Disk EBS volume type to be used during replication. Valid values are `GP2`, `GP3`, `ST1`, or `AUTO`.
  final pulumi.Input<String> defaultLargeStagingDiskType;
  /// Type of EBS encryption to be used during replication. Valid values are `DEFAULT` and `CUSTOM`.
  final pulumi.Input<String> ebsEncryption;
  /// ARN of the EBS encryption key to be used during replication.
  final pulumi.Input<String>? ebsEncryptionKeyArn;
  /// Configuration block for Point in time (PIT) policy to manage snapshots taken during replication. See below.
  final pulumi.Input<List<ReplicationConfigurationTemplatePitPolicy>>? pitPolicies;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Instance type to be used for the replication server.
  final pulumi.Input<String> replicationServerInstanceType;
  /// Security group IDs that will be used by the replication server.
  final pulumi.Input<List<String>> replicationServersSecurityGroupsIds;
  /// Subnet to be used by the replication staging area.
  final pulumi.Input<String> stagingAreaSubnetId;
  /// Set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.
  final pulumi.Input<Map<String, String>> stagingAreaTags;
  /// Set of tags to be associated with the Replication Configuration Template resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ReplicationConfigurationTemplateTimeouts>? timeouts;
  /// Whether to use a dedicated Replication Server in the replication staging area.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool> useDedicatedReplicationServer;

  /// Creates a new [ReplicationConfigurationTemplateArgs].
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
  /// [timeouts] Optional.
  /// [useDedicatedReplicationServer] Whether to use a dedicated Replication Server in the replication staging area.
  ReplicationConfigurationTemplateArgs({
    required this.associateDefaultSecurityGroup,
    this.autoReplicateNewDisks,
    required this.bandwidthThrottling,
    required this.createPublicIp,
    required this.dataPlaneRouting,
    required this.defaultLargeStagingDiskType,
    required this.ebsEncryption,
    this.ebsEncryptionKeyArn,
    this.pitPolicies,
    this.region,
    required this.replicationServerInstanceType,
    required this.replicationServersSecurityGroupsIds,
    required this.stagingAreaSubnetId,
    required this.stagingAreaTags,
    this.tags,
    this.timeouts,
    required this.useDedicatedReplicationServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associateDefaultSecurityGroup': associateDefaultSecurityGroup,
      'autoReplicateNewDisks': ?autoReplicateNewDisks,
      'bandwidthThrottling': bandwidthThrottling,
      'createPublicIp': createPublicIp,
      'dataPlaneRouting': dataPlaneRouting,
      'defaultLargeStagingDiskType': defaultLargeStagingDiskType,
      'ebsEncryption': ebsEncryption,
      'ebsEncryptionKeyArn': ?ebsEncryptionKeyArn,
      'pitPolicies': ?pulumi.Input.mapOptionalInputValue<List<ReplicationConfigurationTemplatePitPolicy>, List<Map<String, dynamic>>>(pitPolicies, (value) => pulumi.Input.encodeList<ReplicationConfigurationTemplatePitPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'replicationServerInstanceType': replicationServerInstanceType,
      'replicationServersSecurityGroupsIds': replicationServersSecurityGroupsIds,
      'stagingAreaSubnetId': stagingAreaSubnetId,
      'stagingAreaTags': stagingAreaTags,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ReplicationConfigurationTemplateTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'useDedicatedReplicationServer': useDedicatedReplicationServer,
    };
  }

  factory ReplicationConfigurationTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationTemplateArgs(
      associateDefaultSecurityGroup: pulumi.Input.fromValue(map['associateDefaultSecurityGroup'] as bool),
      autoReplicateNewDisks: (() { final guardedValue = map['autoReplicateNewDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bandwidthThrottling: pulumi.Input.fromValue(map['bandwidthThrottling'] as int),
      createPublicIp: pulumi.Input.fromValue(map['createPublicIp'] as bool),
      dataPlaneRouting: pulumi.Input.fromValue(map['dataPlaneRouting'] as String),
      defaultLargeStagingDiskType: pulumi.Input.fromValue(map['defaultLargeStagingDiskType'] as String),
      ebsEncryption: pulumi.Input.fromValue(map['ebsEncryption'] as String),
      ebsEncryptionKeyArn: (() { final guardedValue = map['ebsEncryptionKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pitPolicies: (() { final guardedValue = map['pitPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationConfigurationTemplatePitPolicy>(guardedValue, (value) => ReplicationConfigurationTemplatePitPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationServerInstanceType: pulumi.Input.fromValue(map['replicationServerInstanceType'] as String),
      replicationServersSecurityGroupsIds: pulumi.Input.fromValue((map['replicationServersSecurityGroupsIds'] as List).cast<String>()),
      stagingAreaSubnetId: pulumi.Input.fromValue(map['stagingAreaSubnetId'] as String),
      stagingAreaTags: pulumi.Input.fromValue((map['stagingAreaTags'] as Map).cast<String, String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationConfigurationTemplateTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useDedicatedReplicationServer: pulumi.Input.fromValue(map['useDedicatedReplicationServer'] as bool),
    );
  }
}

