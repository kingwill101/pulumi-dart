import 'package:pulumi/pulumi.dart';
import '../engine_type/engine_type.dart';
import 'cluster_instance_args3.dart';

/// Provides an RDS Cluster Instance Resource. A Cluster Instance Resource defines
/// attributes that are specific to a single instance in a RDS Cluster,
/// specifically running Amazon Aurora.
///
/// Unlike other RDS resources that support replication, with Amazon Aurora you do
/// not designate a primary and subsequent replicas. Instead, you simply add RDS
/// Instances and Aurora manages the replication. You can use the [count][5]
/// meta-parameter to make multiple instances and join them all to the same RDS
/// Cluster, or you may specify different Cluster Instance resources with various
/// <span pulumi-lang-nodejs="`instanceClass`" pulumi-lang-dotnet="`InstanceClass`" pulumi-lang-go="`instanceClass`" pulumi-lang-python="`instance_class`" pulumi-lang-yaml="`instanceClass`" pulumi-lang-java="`instanceClass`">`instance_class`</span> sizes.
///
/// For more information on Amazon Aurora, see [Aurora on Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the Amazon RDS User Guide.
///
/// > **NOTE:** Deletion Protection from the RDS service can only be enabled at the cluster level, not for individual cluster instances. You can still add the [<span pulumi-lang-nodejs="`protect`" pulumi-lang-dotnet="`Protect`" pulumi-lang-go="`protect`" pulumi-lang-python="`protect`" pulumi-lang-yaml="`protect`" pulumi-lang-java="`protect`">`protect`</span> CustomResourceOption](https://www.pulumi.com/docs/intro/concepts/programming-model/#protect) to this resource configuration if you desire protection from accidental deletion.
///
/// > **NOTE:** <span pulumi-lang-nodejs="`aurora`" pulumi-lang-dotnet="`Aurora`" pulumi-lang-go="`aurora`" pulumi-lang-python="`aurora`" pulumi-lang-yaml="`aurora`" pulumi-lang-java="`aurora`">`aurora`</span> is no longer a valid <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> because of [Amazon Aurora's MySQL-Compatible Edition version 1 end of life](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.MySQL56.EOL.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Cluster("default", {
/// clusterIdentifier: "aurora-cluster-demo",
/// availabilityZones: [
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// databaseName: "mydb",
/// masterUsername: "foo",
/// masterPassword: "barbut8chars",
/// });
/// const clusterInstances: aws.rds.ClusterInstance[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
/// clusterInstances.push(new aws.rds.ClusterInstance(`cluster_instances-${range.value}`, {
/// identifier: `aurora-cluster-demo-${range.value}`,
/// clusterIdentifier: _default.id,
/// instanceClass: aws.rds.InstanceType.R4_Large,
/// engine: _default.engine.apply((x) => aws.rds.EngineType[x]),
/// engineVersion: _default.engineVersion,
/// }));
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Cluster("default",
/// cluster_identifier="aurora-cluster-demo",
/// availability_zones=[
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// database_name="mydb",
/// master_username="foo",
/// master_password="barbut8chars")
/// cluster_instances = []
/// for range in [{"value": i} for i in range(0, 2)]:
/// cluster_instances.append(aws.rds.ClusterInstance(f"cluster_instances-{range['value']}",
/// identifier=f"aurora-cluster-demo-{range['value']}",
/// cluster_identifier=default.id,
/// instance_class=aws.rds.InstanceType.R4_LARGE,
/// engine=default.engine.apply(lambda x: aws.rds.EngineType(x)),
/// engine_version=default.engine_version))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Rds.Cluster("default", new()
/// {
/// ClusterIdentifier = "aurora-cluster-demo",
/// AvailabilityZones = new[]
/// {
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// },
/// DatabaseName = "mydb",
/// MasterUsername = "foo",
/// MasterPassword = "barbut8chars",
/// });
///
/// var clusterInstances = new List<Aws.Rds.ClusterInstance>();
/// for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// clusterInstances.Add(new Aws.Rds.ClusterInstance($"cluster_instances-{range.Value}", new()
/// {
/// Identifier = $"aurora-cluster-demo-{range.Value}",
/// ClusterIdentifier = @default.Id,
/// InstanceClass = Aws.Rds.InstanceType.R4_Large,
/// Engine = @default.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
/// EngineVersion = @default.EngineVersion,
/// }));
/// }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := rds.NewCluster(ctx, "default", &rds.ClusterArgs{
/// ClusterIdentifier: pulumi.String("aurora-cluster-demo"),
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-west-2a"),
/// pulumi.String("us-west-2b"),
/// pulumi.String("us-west-2c"),
/// },
/// DatabaseName:   pulumi.String("mydb"),
/// MasterUsername: pulumi.String("foo"),
/// MasterPassword: pulumi.String("barbut8chars"),
/// })
/// if err != nil {
/// return err
/// }
/// var clusterInstances []*rds.ClusterInstance
/// for index := 0; index < 2; index++ {
/// key0 := index
/// val0 := index
/// __res, err := rds.NewClusterInstance(ctx, fmt.Sprintf("cluster_instances-%v", key0), &rds.ClusterInstanceArgs{
/// Identifier:        pulumi.Sprintf("aurora-cluster-demo-%v", val0),
/// ClusterIdentifier: _default.ID(),
/// InstanceClass:     pulumi.String(rds.InstanceType_R4_Large),
/// Engine:            _default.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// EngineVersion:     _default.EngineVersion,
/// })
/// if err != nil {
/// return err
/// }
/// clusterInstances = append(clusterInstances, __res)
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new Cluster("default", ClusterArgs.builder()
/// .clusterIdentifier("aurora-cluster-demo")
/// .availabilityZones(
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c")
/// .databaseName("mydb")
/// .masterUsername("foo")
/// .masterPassword("barbut8chars")
/// .build());
///
/// for (var i = 0; i < 2; i++) {
/// new ClusterInstance("clusterInstances-" + i, ClusterInstanceArgs.builder()
/// .identifier(String.format("aurora-cluster-demo-%s", range.value()))
/// .clusterIdentifier(default_.id())
/// .instanceClass("db.r4.large")
/// .engine(default_.engine())
/// .engineVersion(default_.engineVersion())
/// .build());
///
///
/// }
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// clusterInstances:
/// type: aws:rds:ClusterInstance
/// name: cluster_instances
/// properties:
/// identifier: aurora-cluster-demo-${range.value}
/// clusterIdentifier: ${default.id}
/// instanceClass: db.r4.large
/// engine: ${default.engine}
/// engineVersion: ${default.engineVersion}
/// options: {}
/// default:
/// type: aws:rds:Cluster
/// properties:
/// clusterIdentifier: aurora-cluster-demo
/// availabilityZones:
/// - us-west-2a
/// - us-west-2b
/// - us-west-2c
/// databaseName: mydb
/// masterUsername: foo
/// masterPassword: barbut8chars
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import RDS Cluster Instances using the <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterInstance:ClusterInstance prod_instance_1 aurora-cluster-instance-1
/// ```
class ClusterInstance3 extends CustomResource {
  /// Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is<span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> applyImmediately;

  /// Amazon Resource Name (ARN) of cluster instance
  late final Output<String> arn;

  /// Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> autoMinorVersionUpgrade;

  /// EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) about the details.
  late final Output<String> availabilityZone;

  /// Identifier of the CA certificate for the DB instance.
  late final Output<String> caCertIdentifier;

  /// Identifier of the <span pulumi-lang-nodejs="`aws.rds.Cluster`" pulumi-lang-dotnet="`aws.rds.Cluster`" pulumi-lang-go="`rds.Cluster`" pulumi-lang-python="`rds.Cluster`" pulumi-lang-yaml="`aws.rds.Cluster`" pulumi-lang-java="`aws.rds.Cluster`">`aws.rds.Cluster`</span> in which to launch this instance.
  late final Output<String> clusterIdentifier;

  /// Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> copyTagsToSnapshot;

  /// Instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
  late final Output<String?> customIamInstanceProfile;

  /// Name of the DB parameter group to associate with this instance.
  late final Output<String> dbParameterGroupName;

  /// Specifies the DB subnet group to associate with this DB instance. The default behavior varies depending on whether <span pulumi-lang-nodejs="`dbSubnetGroupName`" pulumi-lang-dotnet="`DbSubnetGroupName`" pulumi-lang-go="`dbSubnetGroupName`" pulumi-lang-python="`db_subnet_group_name`" pulumi-lang-yaml="`dbSubnetGroupName`" pulumi-lang-java="`dbSubnetGroupName`">`db_subnet_group_name`</span> is specified. Please refer to official [AWS documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html) to understand how <span pulumi-lang-nodejs="`dbSubnetGroupName`" pulumi-lang-dotnet="`DbSubnetGroupName`" pulumi-lang-go="`dbSubnetGroupName`" pulumi-lang-python="`db_subnet_group_name`" pulumi-lang-yaml="`dbSubnetGroupName`" pulumi-lang-java="`dbSubnetGroupName`">`db_subnet_group_name`</span> and <span pulumi-lang-nodejs="`publiclyAccessible`" pulumi-lang-dotnet="`PubliclyAccessible`" pulumi-lang-go="`publiclyAccessible`" pulumi-lang-python="`publicly_accessible`" pulumi-lang-yaml="`publiclyAccessible`" pulumi-lang-java="`publiclyAccessible`">`publicly_accessible`</span> parameters affect DB instance behaviour. **NOTE:** This must match the <span pulumi-lang-nodejs="`dbSubnetGroupName`" pulumi-lang-dotnet="`DbSubnetGroupName`" pulumi-lang-go="`dbSubnetGroupName`" pulumi-lang-python="`db_subnet_group_name`" pulumi-lang-yaml="`dbSubnetGroupName`" pulumi-lang-java="`dbSubnetGroupName`">`db_subnet_group_name`</span> of the attached <span pulumi-lang-nodejs="`aws.rds.Cluster`" pulumi-lang-dotnet="`aws.rds.Cluster`" pulumi-lang-go="`rds.Cluster`" pulumi-lang-python="`rds.Cluster`" pulumi-lang-yaml="`aws.rds.Cluster`" pulumi-lang-java="`aws.rds.Cluster`">`aws.rds.Cluster`</span>.
  late final Output<String> dbSubnetGroupName;

  /// Region-unique, immutable identifier for the DB instance.
  late final Output<String> dbiResourceId;

  /// DNS address for this instance. May not be writable
  late final Output<String> endpoint;

  /// Name of the database engine to be used for the RDS cluster instance.
  /// Valid Values: `aurora-mysql`, `aurora-postgresql`, <span pulumi-lang-nodejs="`mysql`" pulumi-lang-dotnet="`Mysql`" pulumi-lang-go="`mysql`" pulumi-lang-python="`mysql`" pulumi-lang-yaml="`mysql`" pulumi-lang-java="`mysql`">`mysql`</span>, <span pulumi-lang-nodejs="`postgres`" pulumi-lang-dotnet="`Postgres`" pulumi-lang-go="`postgres`" pulumi-lang-python="`postgres`" pulumi-lang-yaml="`postgres`" pulumi-lang-java="`postgres`">`postgres`</span>.(Note that <span pulumi-lang-nodejs="`mysql`" pulumi-lang-dotnet="`Mysql`" pulumi-lang-go="`mysql`" pulumi-lang-python="`mysql`" pulumi-lang-yaml="`mysql`" pulumi-lang-java="`mysql`">`mysql`</span> and <span pulumi-lang-nodejs="`postgres`" pulumi-lang-dotnet="`Postgres`" pulumi-lang-go="`postgres`" pulumi-lang-python="`postgres`" pulumi-lang-yaml="`postgres`" pulumi-lang-java="`postgres`">`postgres`</span> are Multi-AZ RDS clusters).
  late final Output<EngineType> engine;

  /// Database engine version. Please note that to upgrade the <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> of the instance, it must be done on the <span pulumi-lang-nodejs="`aws.rds.Cluster`" pulumi-lang-dotnet="`aws.rds.Cluster`" pulumi-lang-go="`rds.Cluster`" pulumi-lang-python="`rds.Cluster`" pulumi-lang-yaml="`aws.rds.Cluster`" pulumi-lang-java="`aws.rds.Cluster`">`aws.rds.Cluster`</span> <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span>. Trying to upgrade in <span pulumi-lang-nodejs="`awsClusterInstance`" pulumi-lang-dotnet="`AwsClusterInstance`" pulumi-lang-go="`awsClusterInstance`" pulumi-lang-python="`aws_cluster_instance`" pulumi-lang-yaml="`awsClusterInstance`" pulumi-lang-java="`awsClusterInstance`">`aws_cluster_instance`</span> will not update the <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span>.
  late final Output<String> engineVersion;

  /// Database engine version
  late final Output<String> engineVersionActual;

  /// Forces an instance to be destroyed when a part of a read replica cluster. **Note:** will promote the read replica to a standalone cluster before instance deletion.
  late final Output<bool?> forceDestroy;

  /// Identifier for the RDS instance, if omitted, Pulumi will assign a random, unique identifier.
  late final Output<String> identifier;

  /// Creates a unique identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>.
  late final Output<String> identifierPrefix;

  /// Instance class to use. For details on CPU and memory, see [Scaling Aurora DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html). Aurora uses `db.*` instance classes/types. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) for currently available instance classes and complete details. For Aurora Serverless v2 use `db.serverless`.
  late final Output<String> instanceClass;

  /// ARN for the KMS encryption key if one is set to the cluster.
  late final Output<String> kmsKeyId;

  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60.
  late final Output<int?> monitoringInterval;

  /// ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the [AWS Documentation](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html) what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances.
  late final Output<String> monitoringRoleArn;

  /// Network type of the DB instance.
  late final Output<String> networkType;

  /// Specifies whether Performance Insights is enabled or not. **NOTE:** When Performance Insights is configured at the cluster level through <span pulumi-lang-nodejs="`aws.rds.Cluster`" pulumi-lang-dotnet="`aws.rds.Cluster`" pulumi-lang-go="`rds.Cluster`" pulumi-lang-python="`rds.Cluster`" pulumi-lang-yaml="`aws.rds.Cluster`" pulumi-lang-java="`aws.rds.Cluster`">`aws.rds.Cluster`</span>, this argument cannot be set to a value that conflicts with the cluster's configuration.
  late final Output<bool> performanceInsightsEnabled;

  /// ARN for the KMS key to encrypt Performance Insights data. When specifying <span pulumi-lang-nodejs="`performanceInsightsKmsKeyId`" pulumi-lang-dotnet="`PerformanceInsightsKmsKeyId`" pulumi-lang-go="`performanceInsightsKmsKeyId`" pulumi-lang-python="`performance_insights_kms_key_id`" pulumi-lang-yaml="`performanceInsightsKmsKeyId`" pulumi-lang-java="`performanceInsightsKmsKeyId`">`performance_insights_kms_key_id`</span>, <span pulumi-lang-nodejs="`performanceInsightsEnabled`" pulumi-lang-dotnet="`PerformanceInsightsEnabled`" pulumi-lang-go="`performanceInsightsEnabled`" pulumi-lang-python="`performance_insights_enabled`" pulumi-lang-yaml="`performanceInsightsEnabled`" pulumi-lang-java="`performanceInsightsEnabled`">`performance_insights_enabled`</span> needs to be set to true.
  late final Output<String> performanceInsightsKmsKeyId;

  /// Amount of time in days to retain Performance Insights data. Valid values are <span pulumi-lang-nodejs="`7`" pulumi-lang-dotnet="`7`" pulumi-lang-go="`7`" pulumi-lang-python="`7`" pulumi-lang-yaml="`7`" pulumi-lang-java="`7`">`7`</span>, <span pulumi-lang-nodejs="`731`" pulumi-lang-dotnet="`731`" pulumi-lang-go="`731`" pulumi-lang-python="`731`" pulumi-lang-yaml="`731`" pulumi-lang-java="`731`">`731`</span> (2 years) or a multiple of <span pulumi-lang-nodejs="`31`" pulumi-lang-dotnet="`31`" pulumi-lang-go="`31`" pulumi-lang-python="`31`" pulumi-lang-yaml="`31`" pulumi-lang-java="`31`">`31`</span>. When specifying <span pulumi-lang-nodejs="`performanceInsightsRetentionPeriod`" pulumi-lang-dotnet="`PerformanceInsightsRetentionPeriod`" pulumi-lang-go="`performanceInsightsRetentionPeriod`" pulumi-lang-python="`performance_insights_retention_period`" pulumi-lang-yaml="`performanceInsightsRetentionPeriod`" pulumi-lang-java="`performanceInsightsRetentionPeriod`">`performance_insights_retention_period`</span>, <span pulumi-lang-nodejs="`performanceInsightsEnabled`" pulumi-lang-dotnet="`PerformanceInsightsEnabled`" pulumi-lang-go="`performanceInsightsEnabled`" pulumi-lang-python="`performance_insights_enabled`" pulumi-lang-yaml="`performanceInsightsEnabled`" pulumi-lang-java="`performanceInsightsEnabled`">`performance_insights_enabled`</span> needs to be set to true. Defaults to '7'.
  late final Output<int> performanceInsightsRetentionPeriod;

  /// Database port
  late final Output<int> port;

  /// Daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00". **NOTE:** If <span pulumi-lang-nodejs="`preferredBackupWindow`" pulumi-lang-dotnet="`PreferredBackupWindow`" pulumi-lang-go="`preferredBackupWindow`" pulumi-lang-python="`preferred_backup_window`" pulumi-lang-yaml="`preferredBackupWindow`" pulumi-lang-java="`preferredBackupWindow`">`preferred_backup_window`</span> is set at the cluster level, this argument **must** be omitted.
  late final Output<String> preferredBackupWindow;

  /// Window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  late final Output<String> preferredMaintenanceWindow;

  /// Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoted to writer.
  late final Output<int?> promotionTier;

  /// Bool to control if instance is publicly accessible. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. See the documentation on [Creating DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) for more details on controlling this property.
  late final Output<bool> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies whether the DB cluster is encrypted.
  late final Output<bool> storageEncrypted;

  /// Map of tags to assign to the instance. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html).
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Boolean indicating if this instance is writable. `False` indicates this instance is a read replica.
  late final Output<bool> writer;

  ClusterInstance3(
    String name, {
    ClusterInstanceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterInstance:ClusterInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applyImmediately = Output.createUnknown<bool>();
    this.arn = Output.createUnknown<String>();
    this.autoMinorVersionUpgrade = Output.createUnknown<bool?>();
    this.availabilityZone = Output.createUnknown<String>();
    this.caCertIdentifier = Output.createUnknown<String>();
    this.clusterIdentifier = Output.createUnknown<String>();
    this.copyTagsToSnapshot = Output.createUnknown<bool?>();
    this.customIamInstanceProfile = Output.createUnknown<String?>();
    this.dbParameterGroupName = Output.createUnknown<String>();
    this.dbSubnetGroupName = Output.createUnknown<String>();
    this.dbiResourceId = Output.createUnknown<String>();
    this.endpoint = Output.createUnknown<String>();
    this.engine = Output.createUnknown<EngineType>();
    this.engineVersion = Output.createUnknown<String>();
    this.engineVersionActual = Output.createUnknown<String>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.identifier = Output.createUnknown<String>();
    this.identifierPrefix = Output.createUnknown<String>();
    this.instanceClass = Output.createUnknown<String>();
    this.kmsKeyId = Output.createUnknown<String>();
    this.monitoringInterval = Output.createUnknown<int?>();
    this.monitoringRoleArn = Output.createUnknown<String>();
    this.networkType = Output.createUnknown<String>();
    this.performanceInsightsEnabled = Output.createUnknown<bool>();
    this.performanceInsightsKmsKeyId = Output.createUnknown<String>();
    this.performanceInsightsRetentionPeriod = Output.createUnknown<int>();
    this.port = Output.createUnknown<int>();
    this.preferredBackupWindow = Output.createUnknown<String>();
    this.preferredMaintenanceWindow = Output.createUnknown<String>();
    this.promotionTier = Output.createUnknown<int?>();
    this.publiclyAccessible = Output.createUnknown<bool>();
    this.region = Output.createUnknown<String>();
    this.storageEncrypted = Output.createUnknown<bool>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.writer = Output.createUnknown<bool>();
  }
}
