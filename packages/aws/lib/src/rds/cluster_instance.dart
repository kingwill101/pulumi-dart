import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_instance_args.dart';
import 'engine_type.dart';

/// Provides an RDS Cluster Instance Resource. A Cluster Instance Resource defines
/// attributes that are specific to a single instance in a RDS Cluster,
/// specifically running Amazon Aurora.
///
/// Unlike other RDS resources that support replication, with Amazon Aurora you do
/// not designate a primary and subsequent replicas. Instead, you simply add RDS
/// Instances and Aurora manages the replication. You can use the [count][5]
/// meta-parameter to make multiple instances and join them all to the same RDS
/// Cluster, or you may specify different Cluster Instance resources with various
/// `instance_class` sizes.
///
/// For more information on Amazon Aurora, see [Aurora on Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the Amazon RDS User Guide.
///
/// > **NOTE:** Deletion Protection from the RDS service can only be enabled at the cluster level, not for individual cluster instances. You can still add the [`protect` CustomResourceOption](https://www.pulumi.com/docs/intro/concepts/programming-model/#protect) to this resource configuration if you desire protection from accidental deletion.
///
/// > **NOTE:** `aurora` is no longer a valid `engine` because of [Amazon Aurora's MySQL-Compatible Edition version 1 end of life](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.MySQL56.EOL.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Cluster("default", {
///     clusterIdentifier: "aurora-cluster-demo",
///     availabilityZones: [
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     databaseName: "mydb",
///     masterUsername: "foo",
///     masterPassword: "barbut8chars",
/// });
/// const clusterInstances: aws.rds.ClusterInstance[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     clusterInstances.push(new aws.rds.ClusterInstance(`cluster_instances-${range.value}`, {
///         identifier: `aurora-cluster-demo-${range.value}`,
///         clusterIdentifier: _default.id,
///         instanceClass: aws.rds.InstanceType.R4_Large,
///         engine: _default.engine.apply((x) => aws.rds.EngineType[x]),
///         engineVersion: _default.engineVersion,
///     }));
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Cluster("default",
///     cluster_identifier="aurora-cluster-demo",
///     availability_zones=[
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     database_name="mydb",
///     master_username="foo",
///     master_password="barbut8chars")
/// cluster_instances = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     cluster_instances.append(aws.rds.ClusterInstance(f"cluster_instances-{range['value']}",
///         identifier=f"aurora-cluster-demo-{range['value']}",
///         cluster_identifier=default.id,
///         instance_class=aws.rds.InstanceType.R4_LARGE,
///         engine=default.engine.apply(lambda x: aws.rds.EngineType(x)),
///         engine_version=default.engine_version))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Rds.Cluster("default", new()
///     {
///         ClusterIdentifier = "aurora-cluster-demo",
///         AvailabilityZones = new[]
///         {
///             "us-west-2a",
///             "us-west-2b",
///             "us-west-2c",
///         },
///         DatabaseName = "mydb",
///         MasterUsername = "foo",
///         MasterPassword = "barbut8chars",
///     });
///
///     var clusterInstances = new List<Aws.Rds.ClusterInstance>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         clusterInstances.Add(new Aws.Rds.ClusterInstance($"cluster_instances-{range.Value}", new()
///         {
///             Identifier = $"aurora-cluster-demo-{range.Value}",
///             ClusterIdentifier = @default.Id,
///             InstanceClass = Aws.Rds.InstanceType.R4_Large,
///             Engine = @default.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
///             EngineVersion = @default.EngineVersion,
///         }));
///     }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := rds.NewCluster(ctx, "default", &rds.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("aurora-cluster-demo"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-west-2a"),
/// 				pulumi.String("us-west-2b"),
/// 				pulumi.String("us-west-2c"),
/// 			},
/// 			DatabaseName:   pulumi.String("mydb"),
/// 			MasterUsername: pulumi.String("foo"),
/// 			MasterPassword: pulumi.String("barbut8chars"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var clusterInstances []*rds.ClusterInstance
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := rds.NewClusterInstance(ctx, fmt.Sprintf("cluster_instances-%v", key0), &rds.ClusterInstanceArgs{
/// 				Identifier:        pulumi.Sprintf("aurora-cluster-demo-%v", val0),
/// 				ClusterIdentifier: _default.ID(),
/// 				InstanceClass:     pulumi.String(rds.InstanceType_R4_Large),
/// 				Engine:            _default.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// 				EngineVersion:     _default.EngineVersion,
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			clusterInstances = append(clusterInstances, __res)
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
/// import com.pulumi.aws.rds.ClusterInstance;
/// import com.pulumi.aws.rds.ClusterInstanceArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         var default_ = new Cluster("default", ClusterArgs.builder()
///             .clusterIdentifier("aurora-cluster-demo")
///             .availabilityZones(
///                 "us-west-2a",
///                 "us-west-2b",
///                 "us-west-2c")
///             .databaseName("mydb")
///             .masterUsername("foo")
///             .masterPassword("barbut8chars")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new ClusterInstance("clusterInstances-" + i, ClusterInstanceArgs.builder()
///                 .identifier(String.format("aurora-cluster-demo-%s", range.value()))
///                 .clusterIdentifier(default_.id())
///                 .instanceClass("db.r4.large")
///                 .engine(default_.engine())
///                 .engineVersion(default_.engineVersion())
///                 .build());
///
///
/// }
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   clusterInstances:
///     type: aws:rds:ClusterInstance
///     name: cluster_instances
///     properties:
///       identifier: aurora-cluster-demo-${range.value}
///       clusterIdentifier: ${default.id}
///       instanceClass: db.r4.large
///       engine: ${default.engine}
///       engineVersion: ${default.engineVersion}
///     options: {}
///   default:
///     type: aws:rds:Cluster
///     properties:
///       clusterIdentifier: aurora-cluster-demo
///       availabilityZones:
///         - us-west-2a
///         - us-west-2b
///         - us-west-2c
///       databaseName: mydb
///       masterUsername: foo
///       masterPassword: barbut8chars
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS Cluster Instances using the `identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterInstance:ClusterInstance prod_instance_1 aurora-cluster-instance-1
/// ```
class ClusterInstance extends pulumi.CustomResource {
  /// Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is`false`.
  late final pulumi.Output<bool> applyImmediately;

  /// Amazon Resource Name (ARN) of cluster instance
  late final pulumi.Output<String> arn;

  /// Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default `true`.
  late final pulumi.Output<bool?> autoMinorVersionUpgrade;

  /// EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) about the details.
  late final pulumi.Output<String> availabilityZone;

  /// Identifier of the CA certificate for the DB instance.
  late final pulumi.Output<String> caCertIdentifier;

  /// Identifier of the `aws.rds.Cluster` in which to launch this instance.
  late final pulumi.Output<String> clusterIdentifier;

  /// Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. Default `false`.
  late final pulumi.Output<bool?> copyTagsToSnapshot;

  /// Instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
  late final pulumi.Output<String?> customIamInstanceProfile;

  /// Name of the DB parameter group to associate with this instance.
  late final pulumi.Output<String> dbParameterGroupName;

  /// Specifies the DB subnet group to associate with this DB instance. The default behavior varies depending on whether `db_subnet_group_name` is specified. Please refer to official [AWS documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html) to understand how `db_subnet_group_name` and `publicly_accessible` parameters affect DB instance behaviour. **NOTE:** This must match the `db_subnet_group_name` of the attached `aws.rds.Cluster`.
  late final pulumi.Output<String> dbSubnetGroupName;

  /// Region-unique, immutable identifier for the DB instance.
  late final pulumi.Output<String> dbiResourceId;

  /// DNS address for this instance. May not be writable
  late final pulumi.Output<String> endpoint;

  /// Name of the database engine to be used for the RDS cluster instance.
  /// Valid Values: `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`.(Note that `mysql` and `postgres` are Multi-AZ RDS clusters).
  late final pulumi.Output<EngineType> engine;

  /// Database engine version. Please note that to upgrade the `engine_version` of the instance, it must be done on the `aws.rds.Cluster` `engine_version`. Trying to upgrade in `aws_cluster_instance` will not update the `engine_version`.
  late final pulumi.Output<String> engineVersion;

  /// Database engine version
  late final pulumi.Output<String> engineVersionActual;

  /// Forces an instance to be destroyed when a part of a read replica cluster. **Note:** will promote the read replica to a standalone cluster before instance deletion.
  late final pulumi.Output<bool?> forceDestroy;

  /// Identifier for the RDS instance, if omitted, Pulumi will assign a random, unique identifier.
  late final pulumi.Output<String> identifier;

  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  late final pulumi.Output<String> identifierPrefix;

  /// Instance class to use. For details on CPU and memory, see [Scaling Aurora DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html). Aurora uses `db.*` instance classes/types. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) for currently available instance classes and complete details. For Aurora Serverless v2 use `db.serverless`.
  late final pulumi.Output<String> instanceClass;

  /// ARN for the KMS encryption key if one is set to the cluster.
  late final pulumi.Output<String> kmsKeyId;

  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60.
  late final pulumi.Output<int?> monitoringInterval;

  /// ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the [AWS Documentation](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html) what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances.
  late final pulumi.Output<String> monitoringRoleArn;

  /// Network type of the DB instance.
  late final pulumi.Output<String> networkType;

  /// Specifies whether Performance Insights is enabled or not. **NOTE:** When Performance Insights is configured at the cluster level through `aws.rds.Cluster`, this argument cannot be set to a value that conflicts with the cluster's configuration.
  late final pulumi.Output<bool> performanceInsightsEnabled;

  /// ARN for the KMS key to encrypt Performance Insights data. When specifying `performance_insights_kms_key_id`, `performance_insights_enabled` needs to be set to true.
  late final pulumi.Output<String> performanceInsightsKmsKeyId;

  /// Amount of time in days to retain Performance Insights data. Valid values are `7`, `731` (2 years) or a multiple of `31`. When specifying `performance_insights_retention_period`, `performance_insights_enabled` needs to be set to true. Defaults to '7'.
  late final pulumi.Output<int> performanceInsightsRetentionPeriod;

  /// Database port
  late final pulumi.Output<int> port;

  /// Daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00". **NOTE:** If `preferred_backup_window` is set at the cluster level, this argument **must** be omitted.
  late final pulumi.Output<String> preferredBackupWindow;

  /// Window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  late final pulumi.Output<String> preferredMaintenanceWindow;

  /// Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoted to writer.
  late final pulumi.Output<int?> promotionTier;

  /// Bool to control if instance is publicly accessible. Default `false`. See the documentation on [Creating DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) for more details on controlling this property.
  late final pulumi.Output<bool> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies whether the DB cluster is encrypted.
  late final pulumi.Output<bool> storageEncrypted;

  /// Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html).
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Boolean indicating if this instance is writable. `False` indicates this instance is a read replica.
  late final pulumi.Output<bool> writer;

  /// Creates a new [ClusterInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterInstance]. {@macro pulumi_rds_cluster_instance_cluster_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterInstance(
    String name, {
    ClusterInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterInstance:ClusterInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyImmediately = registerOutput<bool>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.autoMinorVersionUpgrade =
        registerOutput<bool?>('autoMinorVersionUpgrade');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.caCertIdentifier = registerOutput<String>('caCertIdentifier');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.copyTagsToSnapshot = registerOutput<bool?>('copyTagsToSnapshot');
    this.customIamInstanceProfile =
        registerOutput<String?>('customIamInstanceProfile');
    this.dbParameterGroupName = registerOutput<String>('dbParameterGroupName');
    this.dbSubnetGroupName = registerOutput<String>('dbSubnetGroupName');
    this.dbiResourceId = registerOutput<String>('dbiResourceId');
    this.endpoint = registerOutput<String>('endpoint');
    this.engine = registerOutput<EngineType>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.engineVersionActual = registerOutput<String>('engineVersionActual');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.identifier = registerOutput<String>('identifier');
    this.identifierPrefix = registerOutput<String>('identifierPrefix');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.monitoringInterval = registerOutput<int?>('monitoringInterval');
    this.monitoringRoleArn = registerOutput<String>('monitoringRoleArn');
    this.networkType = registerOutput<String>('networkType');
    this.performanceInsightsEnabled =
        registerOutput<bool>('performanceInsightsEnabled');
    this.performanceInsightsKmsKeyId =
        registerOutput<String>('performanceInsightsKmsKeyId');
    this.performanceInsightsRetentionPeriod =
        registerOutput<int>('performanceInsightsRetentionPeriod');
    this.port = registerOutput<int>('port');
    this.preferredBackupWindow =
        registerOutput<String>('preferredBackupWindow');
    this.preferredMaintenanceWindow =
        registerOutput<String>('preferredMaintenanceWindow');
    this.promotionTier = registerOutput<int?>('promotionTier');
    this.publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.writer = registerOutput<bool>('writer');
  }
}
