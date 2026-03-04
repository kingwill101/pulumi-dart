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
  final pulumi.Input<List<ReplicationConfigurationTemplatePitPolicy>>?
  pitPolicies;

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
      'pitPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReplicationConfigurationTemplatePitPolicy>,
            List<Map<String, dynamic>>
          >(
            pitPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  ReplicationConfigurationTemplatePitPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'replicationServerInstanceType': ?replicationServerInstanceType,
      'replicationServersSecurityGroupsIds':
          ?replicationServersSecurityGroupsIds,
      'stagingAreaSubnetId': ?stagingAreaSubnetId,
      'stagingAreaTags': ?stagingAreaTags,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ReplicationConfigurationTemplateTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'useDedicatedReplicationServer': ?useDedicatedReplicationServer,
    };
  }

  factory ReplicationConfigurationTemplateState.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReplicationConfigurationTemplateState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      associateDefaultSecurityGroup: (() {
        final guardedValue = map['associateDefaultSecurityGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoReplicateNewDisks: (() {
        final guardedValue = map['autoReplicateNewDisks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      bandwidthThrottling: (() {
        final guardedValue = map['bandwidthThrottling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      createPublicIp: (() {
        final guardedValue = map['createPublicIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dataPlaneRouting: (() {
        final guardedValue = map['dataPlaneRouting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultLargeStagingDiskType: (() {
        final guardedValue = map['defaultLargeStagingDiskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ebsEncryption: (() {
        final guardedValue = map['ebsEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ebsEncryptionKeyArn: (() {
        final guardedValue = map['ebsEncryptionKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pitPolicies: (() {
        final guardedValue = map['pitPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReplicationConfigurationTemplatePitPolicy>(
            guardedValue,
            (value) => ReplicationConfigurationTemplatePitPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationServerInstanceType: (() {
        final guardedValue = map['replicationServerInstanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationServersSecurityGroupsIds: (() {
        final guardedValue = map['replicationServersSecurityGroupsIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      stagingAreaSubnetId: (() {
        final guardedValue = map['stagingAreaSubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stagingAreaTags: (() {
        final guardedValue = map['stagingAreaTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReplicationConfigurationTemplateTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      useDedicatedReplicationServer: (() {
        final guardedValue = map['useDedicatedReplicationServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
