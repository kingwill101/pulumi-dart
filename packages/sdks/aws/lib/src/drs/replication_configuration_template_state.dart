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
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? associateDefaultSecurityGroup,
    pulumi.Output<bool>? autoReplicateNewDisks,
    pulumi.Output<int>? bandwidthThrottling,
    pulumi.Output<bool>? createPublicIp,
    pulumi.Output<String>? dataPlaneRouting,
    pulumi.Output<String>? defaultLargeStagingDiskType,
    pulumi.Output<String>? ebsEncryption,
    pulumi.Output<String>? ebsEncryptionKeyArn,
    pulumi.Output<List<ReplicationConfigurationTemplatePitPolicy>>? pitPolicies,
    pulumi.Output<String>? region,
    pulumi.Output<String>? replicationServerInstanceType,
    pulumi.Output<List<String>>? replicationServersSecurityGroupsIds,
    pulumi.Output<String>? stagingAreaSubnetId,
    pulumi.Output<Map<String, String>>? stagingAreaTags,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ReplicationConfigurationTemplateTimeouts>? timeouts,
    pulumi.Output<bool>? useDedicatedReplicationServer,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      associateDefaultSecurityGroup = pulumi.Input.asOptionalInput<bool>(associateDefaultSecurityGroup),
      autoReplicateNewDisks = pulumi.Input.asOptionalInput<bool>(autoReplicateNewDisks),
      bandwidthThrottling = pulumi.Input.asOptionalInput<int>(bandwidthThrottling),
      createPublicIp = pulumi.Input.asOptionalInput<bool>(createPublicIp),
      dataPlaneRouting = pulumi.Input.asOptionalInput<String>(dataPlaneRouting),
      defaultLargeStagingDiskType = pulumi.Input.asOptionalInput<String>(defaultLargeStagingDiskType),
      ebsEncryption = pulumi.Input.asOptionalInput<String>(ebsEncryption),
      ebsEncryptionKeyArn = pulumi.Input.asOptionalInput<String>(ebsEncryptionKeyArn),
      pitPolicies = pulumi.Input.asOptionalInput<List<ReplicationConfigurationTemplatePitPolicy>>(pitPolicies),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationServerInstanceType = pulumi.Input.asOptionalInput<String>(replicationServerInstanceType),
      replicationServersSecurityGroupsIds = pulumi.Input.asOptionalInput<List<String>>(replicationServersSecurityGroupsIds),
      stagingAreaSubnetId = pulumi.Input.asOptionalInput<String>(stagingAreaSubnetId),
      stagingAreaTags = pulumi.Input.asOptionalInput<Map<String, String>>(stagingAreaTags),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ReplicationConfigurationTemplateTimeouts>(timeouts),
      useDedicatedReplicationServer = pulumi.Input.asOptionalInput<bool>(useDedicatedReplicationServer);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      associateDefaultSecurityGroup: map['associateDefaultSecurityGroup'] == null ? null : pulumi.Output.create<bool>(map['associateDefaultSecurityGroup'] as bool),
      autoReplicateNewDisks: map['autoReplicateNewDisks'] == null ? null : pulumi.Output.create<bool>(map['autoReplicateNewDisks'] as bool),
      bandwidthThrottling: map['bandwidthThrottling'] == null ? null : pulumi.Output.create<int>(map['bandwidthThrottling'] as int),
      createPublicIp: map['createPublicIp'] == null ? null : pulumi.Output.create<bool>(map['createPublicIp'] as bool),
      dataPlaneRouting: map['dataPlaneRouting'] == null ? null : pulumi.Output.create<String>(map['dataPlaneRouting'] as String),
      defaultLargeStagingDiskType: map['defaultLargeStagingDiskType'] == null ? null : pulumi.Output.create<String>(map['defaultLargeStagingDiskType'] as String),
      ebsEncryption: map['ebsEncryption'] == null ? null : pulumi.Output.create<String>(map['ebsEncryption'] as String),
      ebsEncryptionKeyArn: map['ebsEncryptionKeyArn'] == null ? null : pulumi.Output.create<String>(map['ebsEncryptionKeyArn'] as String),
      pitPolicies: map['pitPolicies'] == null ? null : pulumi.Output.create<List<ReplicationConfigurationTemplatePitPolicy>>(pulumi.Input.decodeList<ReplicationConfigurationTemplatePitPolicy>(map['pitPolicies'], (value) => ReplicationConfigurationTemplatePitPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationServerInstanceType: map['replicationServerInstanceType'] == null ? null : pulumi.Output.create<String>(map['replicationServerInstanceType'] as String),
      replicationServersSecurityGroupsIds: map['replicationServersSecurityGroupsIds'] == null ? null : pulumi.Output.create<List<String>>((map['replicationServersSecurityGroupsIds'] as List).cast<String>()),
      stagingAreaSubnetId: map['stagingAreaSubnetId'] == null ? null : pulumi.Output.create<String>(map['stagingAreaSubnetId'] as String),
      stagingAreaTags: map['stagingAreaTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['stagingAreaTags'] as Map).cast<String, String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ReplicationConfigurationTemplateTimeouts>(ReplicationConfigurationTemplateTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      useDedicatedReplicationServer: map['useDedicatedReplicationServer'] == null ? null : pulumi.Output.create<bool>(map['useDedicatedReplicationServer'] as bool),
    );
  }
}

