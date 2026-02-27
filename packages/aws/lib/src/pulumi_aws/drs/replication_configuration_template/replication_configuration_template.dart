import 'package:pulumi/pulumi.dart' as pulumi;
import '../replication_configuration_template_pit_policy/replication_configuration_template_pit_policy.dart';
import '../replication_configuration_template_timeouts/replication_configuration_template_timeouts.dart';
import 'replication_configuration_template_args.dart';

/// Provides an Elastic Disaster Recovery replication configuration template resource. Before using DRS, your account must be [initialized](https://docs.aws.amazon.com/drs/latest/userguide/getting-started-initializing.html).
///
/// > **NOTE:** Your configuration must use the PIT policy shown in the basic configuration due to AWS rules. The only value that you can change is the `retention_duration` of `rule_id` 3.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DRS Replication Configuration Template using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:drs/replicationConfigurationTemplate:ReplicationConfigurationTemplate example templateid
/// ```
class ReplicationConfigurationTemplate extends pulumi.CustomResource {
  /// Replication configuration template ARN.
  late final pulumi.Output<String> arn;

  /// Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.
  late final pulumi.Output<bool> associateDefaultSecurityGroup;

  /// Whether to allow the AWS replication agent to automatically replicate newly added disks.
  late final pulumi.Output<bool> autoReplicateNewDisks;

  /// Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.
  late final pulumi.Output<int> bandwidthThrottling;

  /// Whether to create a Public IP for the Recovery Instance by default.
  late final pulumi.Output<bool> createPublicIp;

  /// Data plane routing mechanism that will be used for replication. Valid values are `PUBLIC_IP` and `PRIVATE_IP`.
  late final pulumi.Output<String> dataPlaneRouting;

  /// Staging Disk EBS volume type to be used during replication. Valid values are `GP2`, `GP3`, `ST1`, or `AUTO`.
  late final pulumi.Output<String> defaultLargeStagingDiskType;

  /// Type of EBS encryption to be used during replication. Valid values are `DEFAULT` and `CUSTOM`.
  late final pulumi.Output<String> ebsEncryption;

  /// ARN of the EBS encryption key to be used during replication.
  late final pulumi.Output<String?> ebsEncryptionKeyArn;

  /// Configuration block for Point in time (PIT) policy to manage snapshots taken during replication. See below.
  late final pulumi.Output<List<ReplicationConfigurationTemplatePitPolicy>?>
      pitPolicies;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Instance type to be used for the replication server.
  late final pulumi.Output<String> replicationServerInstanceType;

  /// Security group IDs that will be used by the replication server.
  late final pulumi.Output<List<String>> replicationServersSecurityGroupsIds;

  /// Subnet to be used by the replication staging area.
  late final pulumi.Output<String> stagingAreaSubnetId;

  /// Set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.
  late final pulumi.Output<Map<String, String>> stagingAreaTags;

  /// Set of tags to be associated with the Replication Configuration Template resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ReplicationConfigurationTemplateTimeouts?> timeouts;

  /// Whether to use a dedicated Replication Server in the replication staging area.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<bool> useDedicatedReplicationServer;

  ReplicationConfigurationTemplate(
    String name, {
    ReplicationConfigurationTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:drs/replicationConfigurationTemplate:ReplicationConfigurationTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.associateDefaultSecurityGroup =
        registerOutput<bool>('associateDefaultSecurityGroup');
    this.autoReplicateNewDisks = registerOutput<bool>('autoReplicateNewDisks');
    this.bandwidthThrottling = registerOutput<int>('bandwidthThrottling');
    this.createPublicIp = registerOutput<bool>('createPublicIp');
    this.dataPlaneRouting = registerOutput<String>('dataPlaneRouting');
    this.defaultLargeStagingDiskType =
        registerOutput<String>('defaultLargeStagingDiskType');
    this.ebsEncryption = registerOutput<String>('ebsEncryption');
    this.ebsEncryptionKeyArn = registerOutput<String?>('ebsEncryptionKeyArn');
    this.pitPolicies =
        registerOutput<List<ReplicationConfigurationTemplatePitPolicy>?>(
            'pitPolicies');
    this.region = registerOutput<String>('region');
    this.replicationServerInstanceType =
        registerOutput<String>('replicationServerInstanceType');
    this.replicationServersSecurityGroupsIds =
        registerOutput<List<String>>('replicationServersSecurityGroupsIds');
    this.stagingAreaSubnetId = registerOutput<String>('stagingAreaSubnetId');
    this.stagingAreaTags =
        registerOutput<Map<String, String>>('stagingAreaTags');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<ReplicationConfigurationTemplateTimeouts?>('timeouts');
    this.useDedicatedReplicationServer =
        registerOutput<bool>('useDedicatedReplicationServer');
  }
}
