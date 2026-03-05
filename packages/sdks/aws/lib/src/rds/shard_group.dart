import 'package:pulumi/pulumi.dart' as pulumi;
import 'shard_group_args.dart';
import 'shard_group_state.dart';
import 'shard_group_timeouts.dart';

/// Resource for managing an Amazon Aurora Limitless Database DB shard group
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Cluster("example", {
///     clusterIdentifier: "example-limitless-cluster",
///     engine: aws.rds.EngineType.AuroraPostgresql,
///     engineVersion: "16.6-limitless",
///     engineMode: "",
///     storageType: "aurora-iopt1",
///     clusterScalabilityType: "limitless",
///     masterUsername: "foo",
///     masterPassword: "must_be_eight_characters",
///     performanceInsightsEnabled: true,
///     performanceInsightsRetentionPeriod: 31,
///     enabledCloudwatchLogsExports: ["postgresql"],
///     monitoringInterval: 5,
///     monitoringRoleArn: exampleAwsIamRole.arn,
/// });
/// const exampleShardGroup = new aws.rds.ShardGroup("example", {
///     dbShardGroupIdentifier: "example-shard-group",
///     dbClusterIdentifier: example.id,
///     maxAcu: 1200,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Cluster("example",
///     cluster_identifier="example-limitless-cluster",
///     engine=aws.rds.EngineType.AURORA_POSTGRESQL,
///     engine_version="16.6-limitless",
///     engine_mode="",
///     storage_type="aurora-iopt1",
///     cluster_scalability_type="limitless",
///     master_username="foo",
///     master_password="must_be_eight_characters",
///     performance_insights_enabled=True,
///     performance_insights_retention_period=31,
///     enabled_cloudwatch_logs_exports=["postgresql"],
///     monitoring_interval=5,
///     monitoring_role_arn=example_aws_iam_role["arn"])
/// example_shard_group = aws.rds.ShardGroup("example",
///     db_shard_group_identifier="example-shard-group",
///     db_cluster_identifier=example.id,
///     max_acu=1200)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.Cluster("example", new()
///     {
///         ClusterIdentifier = "example-limitless-cluster",
///         Engine = Aws.Rds.EngineType.AuroraPostgresql,
///         EngineVersion = "16.6-limitless",
///         EngineMode = "",
///         StorageType = "aurora-iopt1",
///         ClusterScalabilityType = "limitless",
///         MasterUsername = "foo",
///         MasterPassword = "must_be_eight_characters",
///         PerformanceInsightsEnabled = true,
///         PerformanceInsightsRetentionPeriod = 31,
///         EnabledCloudwatchLogsExports = new[]
///         {
///             "postgresql",
///         },
///         MonitoringInterval = 5,
///         MonitoringRoleArn = exampleAwsIamRole.Arn,
///     });
///
///     var exampleShardGroup = new Aws.Rds.ShardGroup("example", new()
///     {
///         DbShardGroupIdentifier = "example-shard-group",
///         DbClusterIdentifier = example.Id,
///         MaxAcu = 1200,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := rds.NewCluster(ctx, "example", &rds.ClusterArgs{
/// 			ClusterIdentifier:                  pulumi.String("example-limitless-cluster"),
/// 			Engine:                             pulumi.String(rds.EngineTypeAuroraPostgresql),
/// 			EngineVersion:                      pulumi.String("16.6-limitless"),
/// 			EngineMode:                         pulumi.String(""),
/// 			StorageType:                        pulumi.String("aurora-iopt1"),
/// 			ClusterScalabilityType:             pulumi.String("limitless"),
/// 			MasterUsername:                     pulumi.String("foo"),
/// 			MasterPassword:                     pulumi.String("must_be_eight_characters"),
/// 			PerformanceInsightsEnabled:         pulumi.Bool(true),
/// 			PerformanceInsightsRetentionPeriod: pulumi.Int(31),
/// 			EnabledCloudwatchLogsExports: pulumi.StringArray{
/// 				pulumi.String("postgresql"),
/// 			},
/// 			MonitoringInterval: pulumi.Int(5),
/// 			MonitoringRoleArn:  pulumi.Any(exampleAwsIamRole.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewShardGroup(ctx, "example", &rds.ShardGroupArgs{
/// 			DbShardGroupIdentifier: pulumi.String("example-shard-group"),
/// 			DbClusterIdentifier:    example.ID(),
/// 			MaxAcu:                 pulumi.Float64(1200),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
/// import com.pulumi.aws.rds.ShardGroup;
/// import com.pulumi.aws.rds.ShardGroupArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterIdentifier("example-limitless-cluster")
///             .engine("aurora-postgresql")
///             .engineVersion("16.6-limitless")
///             .engineMode("")
///             .storageType("aurora-iopt1")
///             .clusterScalabilityType("limitless")
///             .masterUsername("foo")
///             .masterPassword("must_be_eight_characters")
///             .performanceInsightsEnabled(true)
///             .performanceInsightsRetentionPeriod(31)
///             .enabledCloudwatchLogsExports("postgresql")
///             .monitoringInterval(5)
///             .monitoringRoleArn(exampleAwsIamRole.arn())
///             .build());
///
///         var exampleShardGroup = new ShardGroup("exampleShardGroup", ShardGroupArgs.builder()
///             .dbShardGroupIdentifier("example-shard-group")
///             .dbClusterIdentifier(example.id())
///             .maxAcu(1200.0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:Cluster
///     properties:
///       clusterIdentifier: example-limitless-cluster
///       engine: aurora-postgresql
///       engineVersion: 16.6-limitless
///       engineMode: ""
///       storageType: aurora-iopt1
///       clusterScalabilityType: limitless
///       masterUsername: foo
///       masterPassword: must_be_eight_characters
///       performanceInsightsEnabled: true
///       performanceInsightsRetentionPeriod: 31
///       enabledCloudwatchLogsExports:
///         - postgresql
///       monitoringInterval: 5
///       monitoringRoleArn: ${exampleAwsIamRole.arn}
///   exampleShardGroup:
///     type: aws:rds:ShardGroup
///     name: example
///     properties:
///       dbShardGroupIdentifier: example-shard-group
///       dbClusterIdentifier: ${example.id}
///       maxAcu: 1200
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import shard group using the `db_shard_group_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/shardGroup:ShardGroup example example-shard-group
/// ```
class ShardGroup extends pulumi.CustomResource {
  /// ARN of the shard group.
  late final pulumi.Output<String> arn;

  /// Specifies whether to create standby DB shard groups for the DB shard group. Valid values are:
  late final pulumi.Output<int> computeRedundancy;

  /// The name of the primary DB cluster for the DB shard group.
  late final pulumi.Output<String> dbClusterIdentifier;

  /// The name of the DB shard group.
  late final pulumi.Output<String> dbShardGroupIdentifier;

  /// The AWS Region-unique, immutable identifier for the DB shard group.
  late final pulumi.Output<String> dbShardGroupResourceId;

  /// The connection endpoint for the DB shard group.
  late final pulumi.Output<String> endpoint;

  /// The maximum capacity of the DB shard group in Aurora capacity units (ACUs).
  late final pulumi.Output<double> maxAcu;

  /// The minimum capacity of the DB shard group in Aurora capacity units (ACUs).
  late final pulumi.Output<double> minAcu;

  /// Indicates whether the DB shard group is publicly accessible.
  late final pulumi.Output<bool> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-shard-group.html).
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ShardGroupTimeouts?> timeouts;

  /// Creates a new [ShardGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ShardGroup]. {@macro pulumi_rds_shard_group_shard_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ShardGroup(
    String name, {
    ShardGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:rds/shardGroup:ShardGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    computeRedundancy = registerOutput<int>('computeRedundancy');
    dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    dbShardGroupIdentifier = registerOutput<String>('dbShardGroupIdentifier');
    dbShardGroupResourceId = registerOutput<String>('dbShardGroupResourceId');
    endpoint = registerOutput<String>('endpoint');
    maxAcu = registerOutput<double>('maxAcu');
    minAcu = registerOutput<double>('minAcu');
    publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ShardGroupTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ShardGroupTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [ShardGroup] resource's state with the given [name] and [id].
  static ShardGroup get(
    String name,
    pulumi.Input<String> id, {
    ShardGroupState? state,
  }) {
    return ShardGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ShardGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:rds/shardGroup:ShardGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    computeRedundancy = registerOutput<int>('computeRedundancy');
    dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    dbShardGroupIdentifier = registerOutput<String>('dbShardGroupIdentifier');
    dbShardGroupResourceId = registerOutput<String>('dbShardGroupResourceId');
    endpoint = registerOutput<String>('endpoint');
    maxAcu = registerOutput<double>('maxAcu');
    minAcu = registerOutput<double>('minAcu');
    publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ShardGroupTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ShardGroupTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
