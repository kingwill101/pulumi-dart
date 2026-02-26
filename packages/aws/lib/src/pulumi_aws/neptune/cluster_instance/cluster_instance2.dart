import 'package:pulumi/pulumi.dart';
import 'cluster_instance_args2.dart';

/// A Cluster Instance Resource defines attributes that are specific to a single instance in a Neptune Cluster.
///
/// You can simply add neptune instances and Neptune manages the replication. You can use the count
/// meta-parameter to make multiple instances and join them all to the same Neptune Cluster, or you may specify different Cluster Instance resources with various <span pulumi-lang-nodejs="`instanceClass`" pulumi-lang-dotnet="`InstanceClass`" pulumi-lang-go="`instanceClass`" pulumi-lang-python="`instance_class`" pulumi-lang-yaml="`instanceClass`" pulumi-lang-java="`instanceClass`">`instance_class`</span> sizes.
///
/// ## Example Usage
///
/// The following example will create a neptune cluster with two neptune instances(one writer and one reader).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.neptune.Cluster("default", {
/// clusterIdentifier: "neptune-cluster-demo",
/// engine: "neptune",
/// backupRetentionPeriod: 5,
/// preferredBackupWindow: "07:00-09:00",
/// skipFinalSnapshot: true,
/// iamDatabaseAuthenticationEnabled: true,
/// applyImmediately: true,
/// });
/// const example: aws.neptune.ClusterInstance[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
/// example.push(new aws.neptune.ClusterInstance(`example-${range.value}`, {
/// clusterIdentifier: _default.id,
/// engine: "neptune",
/// instanceClass: "db.r4.large",
/// applyImmediately: true,
/// }));
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.neptune.Cluster("default",
/// cluster_identifier="neptune-cluster-demo",
/// engine="neptune",
/// backup_retention_period=5,
/// preferred_backup_window="07:00-09:00",
/// skip_final_snapshot=True,
/// iam_database_authentication_enabled=True,
/// apply_immediately=True)
/// example = []
/// for range in [{"value": i} for i in range(0, 2)]:
/// example.append(aws.neptune.ClusterInstance(f"example-{range['value']}",
/// cluster_identifier=default.id,
/// engine="neptune",
/// instance_class="db.r4.large",
/// apply_immediately=True))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Neptune.Cluster("default", new()
/// {
/// ClusterIdentifier = "neptune-cluster-demo",
/// Engine = "neptune",
/// BackupRetentionPeriod = 5,
/// PreferredBackupWindow = "07:00-09:00",
/// SkipFinalSnapshot = true,
/// IamDatabaseAuthenticationEnabled = true,
/// ApplyImmediately = true,
/// });
///
/// var example = new List<Aws.Neptune.ClusterInstance>();
/// for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// example.Add(new Aws.Neptune.ClusterInstance($"example-{range.Value}", new()
/// {
/// ClusterIdentifier = @default.Id,
/// Engine = "neptune",
/// InstanceClass = "db.r4.large",
/// ApplyImmediately = true,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := neptune.NewCluster(ctx, "default", &neptune.ClusterArgs{
/// ClusterIdentifier:                pulumi.String("neptune-cluster-demo"),
/// Engine:                           pulumi.String("neptune"),
/// BackupRetentionPeriod:            pulumi.Int(5),
/// PreferredBackupWindow:            pulumi.String("07:00-09:00"),
/// SkipFinalSnapshot:                pulumi.Bool(true),
/// IamDatabaseAuthenticationEnabled: pulumi.Bool(true),
/// ApplyImmediately:                 pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// var example []*neptune.ClusterInstance
/// for index := 0; index < 2; index++ {
/// key0 := index
/// _ := index
/// __res, err := neptune.NewClusterInstance(ctx, fmt.Sprintf("example-%v", key0), &neptune.ClusterInstanceArgs{
/// ClusterIdentifier: _default.ID(),
/// Engine:            pulumi.String("neptune"),
/// InstanceClass:     pulumi.String("db.r4.large"),
/// ApplyImmediately:  pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// example = append(example, __res)
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
/// import com.pulumi.aws.neptune.Cluster;
/// import com.pulumi.aws.neptune.ClusterArgs;
/// import com.pulumi.aws.neptune.ClusterInstance;
/// import com.pulumi.aws.neptune.ClusterInstanceArgs;
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
/// .clusterIdentifier("neptune-cluster-demo")
/// .engine("neptune")
/// .backupRetentionPeriod(5)
/// .preferredBackupWindow("07:00-09:00")
/// .skipFinalSnapshot(true)
/// .iamDatabaseAuthenticationEnabled(true)
/// .applyImmediately(true)
/// .build());
///
/// for (var i = 0; i < 2; i++) {
/// new ClusterInstance("example-" + i, ClusterInstanceArgs.builder()
/// .clusterIdentifier(default_.id())
/// .engine("neptune")
/// .instanceClass("db.r4.large")
/// .applyImmediately(true)
/// .build());
///
///
/// }
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:neptune:Cluster
/// properties:
/// clusterIdentifier: neptune-cluster-demo
/// engine: neptune
/// backupRetentionPeriod: 5
/// preferredBackupWindow: 07:00-09:00
/// skipFinalSnapshot: true
/// iamDatabaseAuthenticationEnabled: true
/// applyImmediately: true
/// example:
/// type: aws:neptune:ClusterInstance
/// properties:
/// clusterIdentifier: ${default.id}
/// engine: neptune
/// instanceClass: db.r4.large
/// applyImmediately: true
/// options: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.neptune.ClusterInstance`" pulumi-lang-dotnet="`aws.neptune.ClusterInstance`" pulumi-lang-go="`neptune.ClusterInstance`" pulumi-lang-python="`neptune.ClusterInstance`" pulumi-lang-yaml="`aws.neptune.ClusterInstance`" pulumi-lang-java="`aws.neptune.ClusterInstance`">`aws.neptune.ClusterInstance`</span> using the instance identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/clusterInstance:ClusterInstance example my-instance
/// ```
class ClusterInstance2 extends CustomResource {
  /// The hostname of the instance. See also <span pulumi-lang-nodejs="`endpoint`" pulumi-lang-dotnet="`Endpoint`" pulumi-lang-go="`endpoint`" pulumi-lang-python="`endpoint`" pulumi-lang-yaml="`endpoint`" pulumi-lang-java="`endpoint`">`endpoint`</span> and <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span>.
  late final Output<String> address;

  /// Specifies whether any instance modifications
  /// are applied immediately, or during the next maintenance window. Default is<span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> applyImmediately;

  /// Amazon Resource Name (ARN) of neptune instance
  late final Output<String> arn;

  /// Indicates that minor engine upgrades will be applied automatically to the instance during the maintenance window. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> autoMinorVersionUpgrade;

  /// The EC2 Availability Zone that the neptune instance is created in.
  late final Output<String> availabilityZone;

  /// The identifier of the <span pulumi-lang-nodejs="`aws.neptune.Cluster`" pulumi-lang-dotnet="`aws.neptune.Cluster`" pulumi-lang-go="`neptune.Cluster`" pulumi-lang-python="`neptune.Cluster`" pulumi-lang-yaml="`aws.neptune.Cluster`" pulumi-lang-java="`aws.neptune.Cluster`">`aws.neptune.Cluster`</span> in which to launch this instance.
  late final Output<String> clusterIdentifier;

  /// The region-unique, immutable identifier for the neptune instance.
  late final Output<String> dbiResourceId;

  /// The connection endpoint in `address:port` format.
  late final Output<String> endpoint;

  /// The name of the database engine to be used for the neptune instance. Defaults to <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span>. Valid Values: <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span>.
  late final Output<String?> engine;

  /// The neptune engine version. Currently configuring this argumnet has no effect.
  late final Output<String> engineVersion;

  /// The identifier for the neptune instance, if omitted, this provider will assign a random, unique identifier.
  late final Output<String> identifier;

  /// Creates a unique identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>.
  late final Output<String> identifierPrefix;

  /// The instance class to use.
  late final Output<String> instanceClass;

  /// The ARN for the KMS encryption key if one is set to the neptune cluster.
  late final Output<String> kmsKeyArn;

  /// The name of the neptune parameter group to associate with this instance.
  late final Output<String> neptuneParameterGroupName;

  /// A subnet group to associate with this neptune instance. **NOTE:** This must match the <span pulumi-lang-nodejs="`neptuneSubnetGroupName`" pulumi-lang-dotnet="`NeptuneSubnetGroupName`" pulumi-lang-go="`neptuneSubnetGroupName`" pulumi-lang-python="`neptune_subnet_group_name`" pulumi-lang-yaml="`neptuneSubnetGroupName`" pulumi-lang-java="`neptuneSubnetGroupName`">`neptune_subnet_group_name`</span> of the attached <span pulumi-lang-nodejs="`aws.neptune.Cluster`" pulumi-lang-dotnet="`aws.neptune.Cluster`" pulumi-lang-go="`neptune.Cluster`" pulumi-lang-python="`neptune.Cluster`" pulumi-lang-yaml="`aws.neptune.Cluster`" pulumi-lang-java="`aws.neptune.Cluster`">`aws.neptune.Cluster`</span>.
  late final Output<String> neptuneSubnetGroupName;

  /// The port on which the DB accepts connections. Defaults to <span pulumi-lang-nodejs="`8182`" pulumi-lang-dotnet="`8182`" pulumi-lang-go="`8182`" pulumi-lang-python="`8182`" pulumi-lang-yaml="`8182`" pulumi-lang-java="`8182`">`8182`</span>.
  late final Output<int?> port;

  /// The daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00"
  late final Output<String> preferredBackupWindow;

  /// The window to perform maintenance in.
  /// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  late final Output<String> preferredMaintenanceWindow;

  /// Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer.
  late final Output<int?> promotionTier;

  /// Bool to control if instance is publicly accessible. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Determines whether a final DB snapshot is created before the DB instance is deleted.
  late final Output<bool?> skipFinalSnapshot;

  /// Specifies whether the neptune cluster is encrypted.
  late final Output<bool> storageEncrypted;

  /// Storage type associated with the cluster `standard/iopt1`.
  late final Output<String> storageType;

  /// A map of tags to assign to the instance. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Boolean indicating if this instance is writable. `False` indicates this instance is a read replica.
  late final Output<bool> writer;

  ClusterInstance2(
    String name, {
    ClusterInstanceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptune/clusterInstance:ClusterInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.address = Output.createUnknown<String>();
    this.applyImmediately = Output.createUnknown<bool>();
    this.arn = Output.createUnknown<String>();
    this.autoMinorVersionUpgrade = Output.createUnknown<bool?>();
    this.availabilityZone = Output.createUnknown<String>();
    this.clusterIdentifier = Output.createUnknown<String>();
    this.dbiResourceId = Output.createUnknown<String>();
    this.endpoint = Output.createUnknown<String>();
    this.engine = Output.createUnknown<String?>();
    this.engineVersion = Output.createUnknown<String>();
    this.identifier = Output.createUnknown<String>();
    this.identifierPrefix = Output.createUnknown<String>();
    this.instanceClass = Output.createUnknown<String>();
    this.kmsKeyArn = Output.createUnknown<String>();
    this.neptuneParameterGroupName = Output.createUnknown<String>();
    this.neptuneSubnetGroupName = Output.createUnknown<String>();
    this.port = Output.createUnknown<int?>();
    this.preferredBackupWindow = Output.createUnknown<String>();
    this.preferredMaintenanceWindow = Output.createUnknown<String>();
    this.promotionTier = Output.createUnknown<int?>();
    this.publiclyAccessible = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.skipFinalSnapshot = Output.createUnknown<bool?>();
    this.storageEncrypted = Output.createUnknown<bool>();
    this.storageType = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.writer = Output.createUnknown<bool>();
  }
}
