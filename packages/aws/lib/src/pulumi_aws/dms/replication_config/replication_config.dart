import 'package:pulumi/pulumi.dart';
import '../replication_config_compute_config/replication_config_compute_config.dart';
import 'replication_config_args.dart';

/// Provides a DMS Serverless replication config resource.
///
/// > **NOTE:** Changing most arguments will stop the replication if it is running. You can set <span pulumi-lang-nodejs="`startReplication`" pulumi-lang-dotnet="`StartReplication`" pulumi-lang-go="`startReplication`" pulumi-lang-python="`start_replication`" pulumi-lang-yaml="`startReplication`" pulumi-lang-java="`startReplication`">`start_replication`</span> to resume the replication afterwards.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const name = new aws.dms.ReplicationConfig("name", {
/// replicationConfigIdentifier: "test-dms-serverless-replication-tf",
/// resourceIdentifier: "test-dms-serverless-replication-tf",
/// replicationType: "cdc",
/// sourceEndpointArn: source.endpointArn,
/// targetEndpointArn: target.endpointArn,
/// tableMappings: `  {
/// \\"rules\\":[{\\"rule-type\\":\\"selection\\",\\"rule-id\\":\\"1\\",\\"rule-name\\":\\"1\\",\\"rule-action\\":\\"include\\",\\"object-locator\\":{\\"schema-name\\":\\"%%\\",\\"table-name\\":\\"%%\\"}}]
/// }
/// `,
/// startReplication: true,
/// computeConfig: {
/// replicationSubnetGroupId: _default.replicationSubnetGroupId,
/// maxCapacityUnits: 64,
/// minCapacityUnits: 2,
/// preferredMaintenanceWindow: "sun:23:45-mon:00:30",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// name = aws.dms.ReplicationConfig("name",
/// replication_config_identifier="test-dms-serverless-replication-tf",
/// resource_identifier="test-dms-serverless-replication-tf",
/// replication_type="cdc",
/// source_endpoint_arn=source["endpointArn"],
/// target_endpoint_arn=target["endpointArn"],
/// table_mappings="""  {
/// \"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"rule-action\":\"include\",\"object-locator\":{\"schema-name\":\"%%\",\"table-name\":\"%%\"}}]
/// }
/// """,
/// start_replication=True,
/// compute_config={
/// "replication_subnet_group_id": default["replicationSubnetGroupId"],
/// "max_capacity_units": 64,
/// "min_capacity_units": 2,
/// "preferred_maintenance_window": "sun:23:45-mon:00:30",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var name = new Aws.Dms.ReplicationConfig("name", new()
/// {
/// ReplicationConfigIdentifier = "test-dms-serverless-replication-tf",
/// ResourceIdentifier = "test-dms-serverless-replication-tf",
/// ReplicationType = "cdc",
/// SourceEndpointArn = source.EndpointArn,
/// TargetEndpointArn = target.EndpointArn,
/// TableMappings = @"  {
/// \""rules\"":[{\""rule-type\"":\""selection\"",\""rule-id\"":\""1\"",\""rule-name\"":\""1\"",\""rule-action\"":\""include\"",\""object-locator\"":{\""schema-name\"":\""%%\"",\""table-name\"":\""%%\""}}]
/// }
/// ",
/// StartReplication = true,
/// ComputeConfig = new Aws.Dms.Inputs.ReplicationConfigComputeConfigArgs
/// {
/// ReplicationSubnetGroupId = @default.ReplicationSubnetGroupId,
/// MaxCapacityUnits = 64,
/// MinCapacityUnits = 2,
/// PreferredMaintenanceWindow = "sun:23:45-mon:00:30",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dms.NewReplicationConfig(ctx, "name", &dms.ReplicationConfigArgs{
/// ReplicationConfigIdentifier: pulumi.String("test-dms-serverless-replication-tf"),
/// ResourceIdentifier:          pulumi.String("test-dms-serverless-replication-tf"),
/// ReplicationType:             pulumi.String("cdc"),
/// SourceEndpointArn:           pulumi.Any(source.EndpointArn),
/// TargetEndpointArn:           pulumi.Any(target.EndpointArn),
/// TableMappings:               pulumi.String("  {\n    \\\"rules\\\":[{\\\"rule-type\\\":\\\"selection\\\",\\\"rule-id\\\":\\\"1\\\",\\\"rule-name\\\":\\\"1\\\",\\\"rule-action\\\":\\\"include\\\",\\\"object-locator\\\":{\\\"schema-name\\\":\\\"%%\\\",\\\"table-name\\\":\\\"%%\\\"}}]\n  }\n"),
/// StartReplication:            pulumi.Bool(true),
/// ComputeConfig: &dms.ReplicationConfigComputeConfigArgs{
/// ReplicationSubnetGroupId:   pulumi.Any(_default.ReplicationSubnetGroupId),
/// MaxCapacityUnits:           pulumi.Int(64),
/// MinCapacityUnits:           pulumi.Int(2),
/// PreferredMaintenanceWindow: pulumi.String("sun:23:45-mon:00:30"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dms.ReplicationConfig;
/// import com.pulumi.aws.dms.ReplicationConfigArgs;
/// import com.pulumi.aws.dms.inputs.ReplicationConfigComputeConfigArgs;
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
/// var name = new ReplicationConfig("name", ReplicationConfigArgs.builder()
/// .replicationConfigIdentifier("test-dms-serverless-replication-tf")
/// .resourceIdentifier("test-dms-serverless-replication-tf")
/// .replicationType("cdc")
/// .sourceEndpointArn(source.endpointArn())
/// .targetEndpointArn(target.endpointArn())
/// .tableMappings("""
/// {
/// \"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"rule-action\":\"include\",\"object-locator\":{\"schema-name\":\"%%\",\"table-name\":\"%%\"}}]
/// }
/// """)
/// .startReplication(true)
/// .computeConfig(ReplicationConfigComputeConfigArgs.builder()
/// .replicationSubnetGroupId(default_.replicationSubnetGroupId())
/// .maxCapacityUnits(64)
/// .minCapacityUnits(2)
/// .preferredMaintenanceWindow("sun:23:45-mon:00:30")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// name:
/// type: aws:dms:ReplicationConfig
/// properties:
/// replicationConfigIdentifier: test-dms-serverless-replication-tf
/// resourceIdentifier: test-dms-serverless-replication-tf
/// replicationType: cdc
/// sourceEndpointArn: ${source.endpointArn}
/// targetEndpointArn: ${target.endpointArn}
/// tableMappings: |2
/// {
/// \"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"rule-action\":\"include\",\"object-locator\":{\"schema-name\":\"%%\",\"table-name\":\"%%\"}}]
/// }
/// startReplication: true
/// computeConfig:
/// replicationSubnetGroupId: ${default.replicationSubnetGroupId}
/// maxCapacityUnits: '64'
/// minCapacityUnits: '2'
/// preferredMaintenanceWindow: sun:23:45-mon:00:30
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the DMS replication configuration.
///
///
/// Using `pulumi import`, import a replication config using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dms/replicationConfig:ReplicationConfig example arn:aws:dms:us-east-1:123456789012:replication-config:UX6OL6MHMMJKFFOXE3H7LLJCMEKBDUG4ZV7DRSI
/// ```
class ReplicationConfig extends CustomResource {
  /// The Amazon Resource Name (ARN) for the serverless replication config.
  late final Output<String> arn;

  /// Configuration block for provisioning an DMS Serverless replication.
  late final Output<ReplicationConfigComputeConfig> computeConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Unique identifier that you want to use to create the config.
  late final Output<String> replicationConfigIdentifier;

  /// An escaped JSON string that are used to provision this replication configuration. For example, [Change processing tuning settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.ChangeProcessingTuning.html)
  late final Output<String> replicationSettings;

  /// The migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  late final Output<String> replicationType;

  /// Unique value or name that you set for a given resource that can be used to construct an Amazon Resource Name (ARN) for that resource. For more information, see [Fine-grained access control using resource names and tags](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.FineGrainedAccess)
  late final Output<String> resourceIdentifier;

  /// The Amazon Resource Name (ARN) string that uniquely identifies the source endpoint.
  late final Output<String> sourceEndpointArn;

  /// Whether to run or stop the serverless replication, default is false.
  late final Output<bool?> startReplication;

  /// JSON settings for specifying supplemental data. For more information see [Specifying supplemental data for task settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html)
  late final Output<String?> supplementalSettings;

  /// An escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  late final Output<String> tableMappings;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint.
  late final Output<String> targetEndpointArn;

  ReplicationConfig(
    String name, {
    ReplicationConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dms/replicationConfig:ReplicationConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.computeConfig = Output.createUnknown<ReplicationConfigComputeConfig>();
    this.region = Output.createUnknown<String>();
    this.replicationConfigIdentifier = Output.createUnknown<String>();
    this.replicationSettings = Output.createUnknown<String>();
    this.replicationType = Output.createUnknown<String>();
    this.resourceIdentifier = Output.createUnknown<String>();
    this.sourceEndpointArn = Output.createUnknown<String>();
    this.startReplication = Output.createUnknown<bool?>();
    this.supplementalSettings = Output.createUnknown<String?>();
    this.tableMappings = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.targetEndpointArn = Output.createUnknown<String>();
  }
}
