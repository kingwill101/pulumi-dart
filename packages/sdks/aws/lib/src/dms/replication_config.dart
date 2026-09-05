import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_config_args.dart';
import 'replication_config_compute_config.dart';
import 'replication_config_state.dart';

/// Provides a DMS Serverless replication config resource.
///
/// &gt; **NOTE:** Changing most arguments will stop the replication if it is running. You can set `startReplication` to resume the replication afterwards.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const name = new aws.dms.ReplicationConfig("name", {
///     computeConfig: {
///         replicationSubnetGroupId: _default.replicationSubnetGroupId,
///         maxCapacityUnits: 64,
///         minCapacityUnits: 2,
///         preferredMaintenanceWindow: "sun:23:45-mon:00:30",
///     },
///     replicationConfigIdentifier: "test-dms-serverless-replication-tf",
///     resourceIdentifier: "test-dms-serverless-replication-tf",
///     replicationType: "cdc",
///     sourceEndpointArn: source.endpointArn,
///     targetEndpointArn: target.endpointArn,
///     tableMappings: `  {
///     \\"rules\\":[{\\"rule-type\\":\\"selection\\",\\"rule-id\\":\\"1\\",\\"rule-name\\":\\"1\\",\\"rule-action\\":\\"include\\",\\"object-locator\\":{\\"schema-name\\":\\"%%\\",\\"table-name\\":\\"%%\\"}}]
///   }
/// `,
///     startReplication: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// name = aws.dms.ReplicationConfig("name",
///     compute_config={
///         "replication_subnet_group_id": default["replicationSubnetGroupId"],
///         "max_capacity_units": 64,
///         "min_capacity_units": 2,
///         "preferred_maintenance_window": "sun:23:45-mon:00:30",
///     },
///     replication_config_identifier="test-dms-serverless-replication-tf",
///     resource_identifier="test-dms-serverless-replication-tf",
///     replication_type="cdc",
///     source_endpoint_arn=source["endpointArn"],
///     target_endpoint_arn=target["endpointArn"],
///     table_mappings="""  {
///     \"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"rule-action\":\"include\",\"object-locator\":{\"schema-name\":\"%%\",\"table-name\":\"%%\"}}]
///   }
/// """,
///     start_replication=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var name = new Aws.Dms.ReplicationConfig("name", new()
///     {
///         ComputeConfig = new Aws.Dms.Inputs.ReplicationConfigComputeConfigArgs
///         {
///             ReplicationSubnetGroupId = @default.ReplicationSubnetGroupId,
///             MaxCapacityUnits = 64,
///             MinCapacityUnits = 2,
///             PreferredMaintenanceWindow = "sun:23:45-mon:00:30",
///         },
///         ReplicationConfigIdentifier = "test-dms-serverless-replication-tf",
///         ResourceIdentifier = "test-dms-serverless-replication-tf",
///         ReplicationType = "cdc",
///         SourceEndpointArn = source.EndpointArn,
///         TargetEndpointArn = target.EndpointArn,
///         TableMappings = @"  {
///     \""rules\"":[{\""rule-type\"":\""selection\"",\""rule-id\"":\""1\"",\""rule-name\"":\""1\"",\""rule-action\"":\""include\"",\""object-locator\"":{\""schema-name\"":\""%%\"",\""table-name\"":\""%%\""}}]
///   }
/// ",
///         StartReplication = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dms.NewReplicationConfig(ctx, "name", &dms.ReplicationConfigArgs{
/// 			ComputeConfig: &dms.ReplicationConfigComputeConfigArgs{
/// 				ReplicationSubnetGroupId:   pulumi.Any(_default.ReplicationSubnetGroupId),
/// 				MaxCapacityUnits:           pulumi.Int(64),
/// 				MinCapacityUnits:           pulumi.Int(2),
/// 				PreferredMaintenanceWindow: pulumi.String("sun:23:45-mon:00:30"),
/// 			},
/// 			ReplicationConfigIdentifier: pulumi.String("test-dms-serverless-replication-tf"),
/// 			ResourceIdentifier:          pulumi.String("test-dms-serverless-replication-tf"),
/// 			ReplicationType:             pulumi.String("cdc"),
/// 			SourceEndpointArn:           pulumi.Any(source.EndpointArn),
/// 			TargetEndpointArn:           pulumi.Any(target.EndpointArn),
/// 			TableMappings:               pulumi.String("  {\n    \\\"rules\\\":[{\\\"rule-type\\\":\\\"selection\\\",\\\"rule-id\\\":\\\"1\\\",\\\"rule-name\\\":\\\"1\\\",\\\"rule-action\\\":\\\"include\\\",\\\"object-locator\\\":{\\\"schema-name\\\":\\\"%%\\\",\\\"table-name\\\":\\\"%%\\\"}}]\n  }\n"),
/// 			StartReplication:            pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_dms_replicationconfig" "name" {
///   compute_config = {
///     replication_subnet_group_id  = default.replicationSubnetGroupId
///     max_capacity_units           = "64"
///     min_capacity_units           = "2"
///     preferred_maintenance_window = "sun:23:45-mon:00:30"
///   }
///   replication_config_identifier = "test-dms-serverless-replication-tf"
///   resource_identifier           = "test-dms-serverless-replication-tf"
///   replication_type              = "cdc"
///   source_endpoint_arn           = source.endpointArn
///   target_endpoint_arn           = target.endpointArn
///   table_mappings                = "  {\n    \\\"rules\\\":[{\\\"rule-type\\\":\\\"selection\\\",\\\"rule-id\\\":\\\"1\\\",\\\"rule-name\\\":\\\"1\\\",\\\"rule-action\\\":\\\"include\\\",\\\"object-locator\\\":{\\\"schema-name\\\":\\\"%%\\\",\\\"table-name\\\":\\\"%%\\\"}}]\n  }\n"
///   start_replication             = true
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var name = new ReplicationConfig("name", ReplicationConfigArgs.builder()
///             .computeConfig(ReplicationConfigComputeConfigArgs.builder()
///                 .replicationSubnetGroupId(default_.replicationSubnetGroupId())
///                 .maxCapacityUnits(64)
///                 .minCapacityUnits(2)
///                 .preferredMaintenanceWindow("sun:23:45-mon:00:30")
///                 .build())
///             .replicationConfigIdentifier("test-dms-serverless-replication-tf")
///             .resourceIdentifier("test-dms-serverless-replication-tf")
///             .replicationType("cdc")
///             .sourceEndpointArn(source.endpointArn())
///             .targetEndpointArn(target.endpointArn())
///             .tableMappings("""
///   {
///     \"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"rule-action\":\"include\",\"object-locator\":{\"schema-name\":\"%%\",\"table-name\":\"%%\"}}]
///   }
///             """)
///             .startReplication(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   name:
///     type: aws:dms:ReplicationConfig
///     properties:
///       computeConfig:
///         replicationSubnetGroupId: ${default.replicationSubnetGroupId}
///         maxCapacityUnits: '64'
///         minCapacityUnits: '2'
///         preferredMaintenanceWindow: sun:23:45-mon:00:30
///       replicationConfigIdentifier: test-dms-serverless-replication-tf
///       resourceIdentifier: test-dms-serverless-replication-tf
///       replicationType: cdc
///       sourceEndpointArn: ${source.endpointArn}
///       targetEndpointArn: ${target.endpointArn}
///       tableMappings: |2
///           {
///             \"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"rule-action\":\"include\",\"object-locator\":{\"schema-name\":\"%%\",\"table-name\":\"%%\"}}]
///           }
///       startReplication: true
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the DMS replication configuration.
///
///
/// Using `pulumi import`, import a replication config using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:dms/replicationConfig:ReplicationConfig example arn:aws:dms:us-east-1:123456789012:replication-config:UX6OL6MHMMJKFFOXE3H7LLJCMEKBDUG4ZV7DRSI
/// ```
class ReplicationConfig extends pulumi.CustomResource {
  /// ARN for the serverless replication config.
  late final pulumi.Output<String> arn;
  /// Configuration block for provisioning an DMS Serverless replication.
  late final pulumi.Output<ReplicationConfigComputeConfig> computeConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Unique identifier that you want to use to create the config.
  late final pulumi.Output<String> replicationConfigIdentifier;
  /// An escaped JSON string that are used to provision this replication configuration. For example, [Change processing tuning settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.ChangeProcessingTuning.html)
  late final pulumi.Output<String> replicationSettings;
  /// The migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  late final pulumi.Output<String> replicationType;
  /// Unique value or name that you set for a given resource that can be used to construct an ARN for that resource. For more information, see [Fine-grained access control using resource names and tags](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.FineGrainedAccess)
  late final pulumi.Output<String> resourceIdentifier;
  /// ARN string that uniquely identifies the source endpoint.
  late final pulumi.Output<String> sourceEndpointArn;
  /// Whether to run or stop the serverless replication, default is false.
  late final pulumi.Output<bool?> startReplication;
  /// JSON settings for specifying supplemental data. For more information see [Specifying supplemental data for task settings](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html)
  late final pulumi.Output<String?> supplementalSettings;
  /// An escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  late final pulumi.Output<String> tableMappings;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN string that uniquely identifies the target endpoint.
  late final pulumi.Output<String> targetEndpointArn;

  /// Creates a new [ReplicationConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationConfig]. {@macro pulumi_dms_replication_config_replication_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationConfig(
    String name, {
    ReplicationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/replicationConfig:ReplicationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    computeConfig = registerOutput<ReplicationConfigComputeConfig>('computeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicationConfigComputeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    replicationConfigIdentifier = registerOutput<String>('replicationConfigIdentifier');
    replicationSettings = registerOutput<String>('replicationSettings');
    replicationType = registerOutput<String>('replicationType');
    resourceIdentifier = registerOutput<String>('resourceIdentifier');
    sourceEndpointArn = registerOutput<String>('sourceEndpointArn');
    startReplication = registerOutput<bool?>('startReplication');
    supplementalSettings = registerOutput<String?>('supplementalSettings');
    tableMappings = registerOutput<String>('tableMappings');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetEndpointArn = registerOutput<String>('targetEndpointArn');
  }

  /// Gets an existing [ReplicationConfig] resource's state with the given [name] and [id].
  static ReplicationConfig get(
    String name,
    pulumi.Input<String> id, {
    ReplicationConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ReplicationConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ReplicationConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/replicationConfig:ReplicationConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    computeConfig = registerOutput<ReplicationConfigComputeConfig>('computeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicationConfigComputeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    replicationConfigIdentifier = registerOutput<String>('replicationConfigIdentifier');
    replicationSettings = registerOutput<String>('replicationSettings');
    replicationType = registerOutput<String>('replicationType');
    resourceIdentifier = registerOutput<String>('resourceIdentifier');
    sourceEndpointArn = registerOutput<String>('sourceEndpointArn');
    startReplication = registerOutput<bool?>('startReplication');
    supplementalSettings = registerOutput<String?>('supplementalSettings');
    tableMappings = registerOutput<String>('tableMappings');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetEndpointArn = registerOutput<String>('targetEndpointArn');
  }

  /// Creates a typed reference to an existing [ReplicationConfig] resource.
  ReplicationConfig.reference(String urn)
    : super(
        'aws:dms/replicationConfig:ReplicationConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    computeConfig = registerOutput<ReplicationConfigComputeConfig>('computeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicationConfigComputeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    replicationConfigIdentifier = registerOutput<String>('replicationConfigIdentifier');
    replicationSettings = registerOutput<String>('replicationSettings');
    replicationType = registerOutput<String>('replicationType');
    resourceIdentifier = registerOutput<String>('resourceIdentifier');
    sourceEndpointArn = registerOutput<String>('sourceEndpointArn');
    startReplication = registerOutput<bool?>('startReplication');
    supplementalSettings = registerOutput<String?>('supplementalSettings');
    tableMappings = registerOutput<String>('tableMappings');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetEndpointArn = registerOutput<String>('targetEndpointArn');
  }
}
