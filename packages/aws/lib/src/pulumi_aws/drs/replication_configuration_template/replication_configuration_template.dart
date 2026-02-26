import 'package:pulumi/pulumi.dart';
import '../replication_configuration_template_pit_policy/replication_configuration_template_pit_policy.dart';
import '../replication_configuration_template_timeouts/replication_configuration_template_timeouts.dart';
import 'replication_configuration_template_args.dart';

/// Provides an Elastic Disaster Recovery replication configuration template resource. Before using DRS, your account must be [initialized](https://docs.aws.amazon.com/drs/latest/userguide/getting-started-initializing.html).
///
/// > **NOTE:** Your configuration must use the PIT policy shown in the basic configuration due to AWS rules. The only value that you can change is the <span pulumi-lang-nodejs="`retentionDuration`" pulumi-lang-dotnet="`RetentionDuration`" pulumi-lang-go="`retentionDuration`" pulumi-lang-python="`retention_duration`" pulumi-lang-yaml="`retentionDuration`" pulumi-lang-java="`retentionDuration`">`retention_duration`</span> of <span pulumi-lang-nodejs="`ruleId`" pulumi-lang-dotnet="`RuleId`" pulumi-lang-go="`ruleId`" pulumi-lang-python="`rule_id`" pulumi-lang-yaml="`ruleId`" pulumi-lang-java="`ruleId`">`rule_id`</span> 3.
///
/// ## Example Usage
///
/// ### Basic configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.drs.ReplicationConfigurationTemplate("example", {
/// associateDefaultSecurityGroup: false,
/// bandwidthThrottling: 12,
/// createPublicIp: false,
/// dataPlaneRouting: "PRIVATE_IP",
/// defaultLargeStagingDiskType: "GP2",
/// ebsEncryption: "DEFAULT",
/// ebsEncryptionKeyArn: "arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
/// replicationServerInstanceType: "t3.small",
/// replicationServersSecurityGroupsIds: exampleAwsSecurityGroup.map(__item => __item.id),
/// stagingAreaSubnetId: exampleAwsSubnet.id,
/// useDedicatedReplicationServer: false,
/// pitPolicies: [
/// {
/// enabled: true,
/// interval: 10,
/// retentionDuration: 60,
/// units: "MINUTE",
/// ruleId: 1,
/// },
/// {
/// enabled: true,
/// interval: 1,
/// retentionDuration: 24,
/// units: "HOUR",
/// ruleId: 2,
/// },
/// {
/// enabled: true,
/// interval: 1,
/// retentionDuration: 3,
/// units: "DAY",
/// ruleId: 3,
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.drs.ReplicationConfigurationTemplate("example",
/// associate_default_security_group=False,
/// bandwidth_throttling=12,
/// create_public_ip=False,
/// data_plane_routing="PRIVATE_IP",
/// default_large_staging_disk_type="GP2",
/// ebs_encryption="DEFAULT",
/// ebs_encryption_key_arn="arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
/// replication_server_instance_type="t3.small",
/// replication_servers_security_groups_ids=[__item["id"] for __item in example_aws_security_group],
/// staging_area_subnet_id=example_aws_subnet["id"],
/// use_dedicated_replication_server=False,
/// pit_policies=[
/// {
/// "enabled": True,
/// "interval": 10,
/// "retention_duration": 60,
/// "units": "MINUTE",
/// "rule_id": 1,
/// },
/// {
/// "enabled": True,
/// "interval": 1,
/// "retention_duration": 24,
/// "units": "HOUR",
/// "rule_id": 2,
/// },
/// {
/// "enabled": True,
/// "interval": 1,
/// "retention_duration": 3,
/// "units": "DAY",
/// "rule_id": 3,
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Drs.ReplicationConfigurationTemplate("example", new()
/// {
/// AssociateDefaultSecurityGroup = false,
/// BandwidthThrottling = 12,
/// CreatePublicIp = false,
/// DataPlaneRouting = "PRIVATE_IP",
/// DefaultLargeStagingDiskType = "GP2",
/// EbsEncryption = "DEFAULT",
/// EbsEncryptionKeyArn = "arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
/// ReplicationServerInstanceType = "t3.small",
/// ReplicationServersSecurityGroupsIds = exampleAwsSecurityGroup.Select(__item => __item.Id).ToList(),
/// StagingAreaSubnetId = exampleAwsSubnet.Id,
/// UseDedicatedReplicationServer = false,
/// PitPolicies = new[]
/// {
/// new Aws.Drs.Inputs.ReplicationConfigurationTemplatePitPolicyArgs
/// {
/// Enabled = true,
/// Interval = 10,
/// RetentionDuration = 60,
/// Units = "MINUTE",
/// RuleId = 1,
/// },
/// new Aws.Drs.Inputs.ReplicationConfigurationTemplatePitPolicyArgs
/// {
/// Enabled = true,
/// Interval = 1,
/// RetentionDuration = 24,
/// Units = "HOUR",
/// RuleId = 2,
/// },
/// new Aws.Drs.Inputs.ReplicationConfigurationTemplatePitPolicyArgs
/// {
/// Enabled = true,
/// Interval = 1,
/// RetentionDuration = 3,
/// Units = "DAY",
/// RuleId = 3,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/drs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSecurityGroup {
/// splat0 = append(splat0, val0.Id)
/// }
/// _, err := drs.NewReplicationConfigurationTemplate(ctx, "example", &drs.ReplicationConfigurationTemplateArgs{
/// AssociateDefaultSecurityGroup: pulumi.Bool(false),
/// BandwidthThrottling: pulumi.Int(12),
/// CreatePublicIp: pulumi.Bool(false),
/// DataPlaneRouting: pulumi.String("PRIVATE_IP"),
/// DefaultLargeStagingDiskType: pulumi.String("GP2"),
/// EbsEncryption: pulumi.String("DEFAULT"),
/// EbsEncryptionKeyArn: pulumi.String("arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"),
/// ReplicationServerInstanceType: pulumi.String("t3.small"),
/// ReplicationServersSecurityGroupsIds: toPulumiArray(splat0),
/// StagingAreaSubnetId: pulumi.Any(exampleAwsSubnet.Id),
/// UseDedicatedReplicationServer: pulumi.Bool(false),
/// PitPolicies: drs.ReplicationConfigurationTemplatePitPolicyArray{
/// &drs.ReplicationConfigurationTemplatePitPolicyArgs{
/// Enabled: pulumi.Bool(true),
/// Interval: pulumi.Int(10),
/// RetentionDuration: pulumi.Int(60),
/// Units: pulumi.String("MINUTE"),
/// RuleId: pulumi.Int(1),
/// },
/// &drs.ReplicationConfigurationTemplatePitPolicyArgs{
/// Enabled: pulumi.Bool(true),
/// Interval: pulumi.Int(1),
/// RetentionDuration: pulumi.Int(24),
/// Units: pulumi.String("HOUR"),
/// RuleId: pulumi.Int(2),
/// },
/// &drs.ReplicationConfigurationTemplatePitPolicyArgs{
/// Enabled: pulumi.Bool(true),
/// Interval: pulumi.Int(1),
/// RetentionDuration: pulumi.Int(3),
/// Units: pulumi.String("DAY"),
/// RuleId: pulumi.Int(3),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.drs.ReplicationConfigurationTemplate;
/// import com.pulumi.aws.drs.ReplicationConfigurationTemplateArgs;
/// import com.pulumi.aws.drs.inputs.ReplicationConfigurationTemplatePitPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ReplicationConfigurationTemplate("example", ReplicationConfigurationTemplateArgs.builder()
/// .associateDefaultSecurityGroup(false)
/// .bandwidthThrottling(12)
/// .createPublicIp(false)
/// .dataPlaneRouting("PRIVATE_IP")
/// .defaultLargeStagingDiskType("GP2")
/// .ebsEncryption("DEFAULT")
/// .ebsEncryptionKeyArn("arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab")
/// .replicationServerInstanceType("t3.small")
/// .replicationServersSecurityGroupsIds(exampleAwsSecurityGroup.stream().map(element -> element.id()).collect(toList()))
/// .stagingAreaSubnetId(exampleAwsSubnet.id())
/// .useDedicatedReplicationServer(false)
/// .pitPolicies(
/// ReplicationConfigurationTemplatePitPolicyArgs.builder()
/// .enabled(true)
/// .interval(10)
/// .retentionDuration(60)
/// .units("MINUTE")
/// .ruleId(1)
/// .build(),
/// ReplicationConfigurationTemplatePitPolicyArgs.builder()
/// .enabled(true)
/// .interval(1)
/// .retentionDuration(24)
/// .units("HOUR")
/// .ruleId(2)
/// .build(),
/// ReplicationConfigurationTemplatePitPolicyArgs.builder()
/// .enabled(true)
/// .interval(1)
/// .retentionDuration(3)
/// .units("DAY")
/// .ruleId(3)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DRS Replication Configuration Template using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:drs/replicationConfigurationTemplate:ReplicationConfigurationTemplate example templateid
/// ```
class ReplicationConfigurationTemplate extends CustomResource {
  /// Replication configuration template ARN.
  late final Output<String> arn;

  /// Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.
  late final Output<bool> associateDefaultSecurityGroup;

  /// Whether to allow the AWS replication agent to automatically replicate newly added disks.
  late final Output<bool> autoReplicateNewDisks;

  /// Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.
  late final Output<int> bandwidthThrottling;

  /// Whether to create a Public IP for the Recovery Instance by default.
  late final Output<bool> createPublicIp;

  /// Data plane routing mechanism that will be used for replication. Valid values are `PUBLIC_IP` and `PRIVATE_IP`.
  late final Output<String> dataPlaneRouting;

  /// Staging Disk EBS volume type to be used during replication. Valid values are `GP2`, `GP3`, `ST1`, or `AUTO`.
  late final Output<String> defaultLargeStagingDiskType;

  /// Type of EBS encryption to be used during replication. Valid values are `DEFAULT` and `CUSTOM`.
  late final Output<String> ebsEncryption;

  /// ARN of the EBS encryption key to be used during replication.
  late final Output<String?> ebsEncryptionKeyArn;

  /// Configuration block for Point in time (PIT) policy to manage snapshots taken during replication. See below.
  late final Output<List<ReplicationConfigurationTemplatePitPolicy>?>
      pitPolicies;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Instance type to be used for the replication server.
  late final Output<String> replicationServerInstanceType;

  /// Security group IDs that will be used by the replication server.
  late final Output<List<String>> replicationServersSecurityGroupsIds;

  /// Subnet to be used by the replication staging area.
  late final Output<String> stagingAreaSubnetId;

  /// Set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.
  late final Output<Map<String, String>> stagingAreaTags;

  /// Set of tags to be associated with the Replication Configuration Template resource.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ReplicationConfigurationTemplateTimeouts?> timeouts;

  /// Whether to use a dedicated Replication Server in the replication staging area.
  ///
  /// The following arguments are optional:
  late final Output<bool> useDedicatedReplicationServer;

  ReplicationConfigurationTemplate(
    String name, {
    ReplicationConfigurationTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:drs/replicationConfigurationTemplate:ReplicationConfigurationTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.associateDefaultSecurityGroup = Output.createUnknown<bool>();
    this.autoReplicateNewDisks = Output.createUnknown<bool>();
    this.bandwidthThrottling = Output.createUnknown<int>();
    this.createPublicIp = Output.createUnknown<bool>();
    this.dataPlaneRouting = Output.createUnknown<String>();
    this.defaultLargeStagingDiskType = Output.createUnknown<String>();
    this.ebsEncryption = Output.createUnknown<String>();
    this.ebsEncryptionKeyArn = Output.createUnknown<String?>();
    this.pitPolicies = Output.createUnknown<
        List<ReplicationConfigurationTemplatePitPolicy>?>();
    this.region = Output.createUnknown<String>();
    this.replicationServerInstanceType = Output.createUnknown<String>();
    this.replicationServersSecurityGroupsIds =
        Output.createUnknown<List<String>>();
    this.stagingAreaSubnetId = Output.createUnknown<String>();
    this.stagingAreaTags = Output.createUnknown<Map<String, String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts =
        Output.createUnknown<ReplicationConfigurationTemplateTimeouts?>();
    this.useDedicatedReplicationServer = Output.createUnknown<bool>();
  }
}
