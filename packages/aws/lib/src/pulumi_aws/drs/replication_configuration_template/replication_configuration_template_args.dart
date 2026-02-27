// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../replication_configuration_template_pit_policy/replication_configuration_template_pit_policy.dart';
import '../replication_configuration_template_timeouts/replication_configuration_template_timeouts.dart';

/// The set of arguments for ReplicationConfigurationTemplate.
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
  final pulumi.Input<List<ReplicationConfigurationTemplatePitPolicy>>?
      pitPolicies;

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
    final map = <String, dynamic>{};
    map['associateDefaultSecurityGroup'] = associateDefaultSecurityGroup;
    final autoReplicateNewDisksValue = autoReplicateNewDisks;
    if (autoReplicateNewDisksValue != null) {
      map['autoReplicateNewDisks'] = autoReplicateNewDisksValue;
    }
    map['bandwidthThrottling'] = bandwidthThrottling;
    map['createPublicIp'] = createPublicIp;
    map['dataPlaneRouting'] = dataPlaneRouting;
    map['defaultLargeStagingDiskType'] = defaultLargeStagingDiskType;
    map['ebsEncryption'] = ebsEncryption;
    final ebsEncryptionKeyArnValue = ebsEncryptionKeyArn;
    if (ebsEncryptionKeyArnValue != null) {
      map['ebsEncryptionKeyArn'] = ebsEncryptionKeyArnValue;
    }
    final pitPoliciesValue = pitPolicies;
    if (pitPoliciesValue != null) {
      map['pitPolicies'] = pulumi.Input.mapOptionalInputValue<
              List<ReplicationConfigurationTemplatePitPolicy>,
              List<Map<String, dynamic>>>(
          pitPoliciesValue,
          (value) => pulumi.Input.encodeList<
              ReplicationConfigurationTemplatePitPolicy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicationServerInstanceType'] = replicationServerInstanceType;
    map['replicationServersSecurityGroupsIds'] =
        replicationServersSecurityGroupsIds;
    map['stagingAreaSubnetId'] = stagingAreaSubnetId;
    map['stagingAreaTags'] = stagingAreaTags;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ReplicationConfigurationTemplateTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['useDedicatedReplicationServer'] = useDedicatedReplicationServer;
    return map;
  }

  factory ReplicationConfigurationTemplateArgs.fromMap(
      Map<String, dynamic> map) {
    return ReplicationConfigurationTemplateArgs(
      associateDefaultSecurityGroup:
          pulumi.Input.asInput<bool>(map['associateDefaultSecurityGroup']),
      autoReplicateNewDisks:
          pulumi.Input.asOptionalInput<bool>(map['autoReplicateNewDisks']),
      bandwidthThrottling:
          pulumi.Input.asInput<int>(map['bandwidthThrottling']),
      createPublicIp: pulumi.Input.asInput<bool>(map['createPublicIp']),
      dataPlaneRouting: pulumi.Input.asInput<String>(map['dataPlaneRouting']),
      defaultLargeStagingDiskType:
          pulumi.Input.asInput<String>(map['defaultLargeStagingDiskType']),
      ebsEncryption: pulumi.Input.asInput<String>(map['ebsEncryption']),
      ebsEncryptionKeyArn:
          pulumi.Input.asOptionalInput<String>(map['ebsEncryptionKeyArn']),
      pitPolicies: pulumi.Input.asOptionalInput<
          List<ReplicationConfigurationTemplatePitPolicy>>(map['pitPolicies']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicationServerInstanceType:
          pulumi.Input.asInput<String>(map['replicationServerInstanceType']),
      replicationServersSecurityGroupsIds: pulumi.Input.asInput<List<String>>(
          map['replicationServersSecurityGroupsIds']),
      stagingAreaSubnetId:
          pulumi.Input.asInput<String>(map['stagingAreaSubnetId']),
      stagingAreaTags:
          pulumi.Input.asInput<Map<String, String>>(map['stagingAreaTags']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<
          ReplicationConfigurationTemplateTimeouts>(map['timeouts']),
      useDedicatedReplicationServer:
          pulumi.Input.asInput<bool>(map['useDedicatedReplicationServer']),
    );
  }
}
