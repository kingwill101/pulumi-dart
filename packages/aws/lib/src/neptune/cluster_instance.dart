import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_instance_args.dart';

/// A Cluster Instance Resource defines attributes that are specific to a single instance in a Neptune Cluster.
///
/// You can simply add neptune instances and Neptune manages the replication. You can use the count
/// meta-parameter to make multiple instances and join them all to the same Neptune Cluster, or you may specify different Cluster Instance resources with various `instance_class` sizes.
///
/// ## Example Usage
///
/// The following example will create a neptune cluster with two neptune instances(one writer and one reader).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.neptune.Cluster("default", {
///     clusterIdentifier: "neptune-cluster-demo",
///     engine: "neptune",
///     backupRetentionPeriod: 5,
///     preferredBackupWindow: "07:00-09:00",
///     skipFinalSnapshot: true,
///     iamDatabaseAuthenticationEnabled: true,
///     applyImmediately: true,
/// });
/// const example: aws.neptune.ClusterInstance[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     example.push(new aws.neptune.ClusterInstance(`example-${range.value}`, {
///         clusterIdentifier: _default.id,
///         engine: "neptune",
///         instanceClass: "db.r4.large",
///         applyImmediately: true,
///     }));
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.neptune.Cluster("default",
///     cluster_identifier="neptune-cluster-demo",
///     engine="neptune",
///     backup_retention_period=5,
///     preferred_backup_window="07:00-09:00",
///     skip_final_snapshot=True,
///     iam_database_authentication_enabled=True,
///     apply_immediately=True)
/// example = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     example.append(aws.neptune.ClusterInstance(f"example-{range['value']}",
///         cluster_identifier=default.id,
///         engine="neptune",
///         instance_class="db.r4.large",
///         apply_immediately=True))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Neptune.Cluster("default", new()
///     {
///         ClusterIdentifier = "neptune-cluster-demo",
///         Engine = "neptune",
///         BackupRetentionPeriod = 5,
///         PreferredBackupWindow = "07:00-09:00",
///         SkipFinalSnapshot = true,
///         IamDatabaseAuthenticationEnabled = true,
///         ApplyImmediately = true,
///     });
///
///     var example = new List<Aws.Neptune.ClusterInstance>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         example.Add(new Aws.Neptune.ClusterInstance($"example-{range.Value}", new()
///         {
///             ClusterIdentifier = @default.Id,
///             Engine = "neptune",
///             InstanceClass = "db.r4.large",
///             ApplyImmediately = true,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := neptune.NewCluster(ctx, "default", &neptune.ClusterArgs{
/// 			ClusterIdentifier:                pulumi.String("neptune-cluster-demo"),
/// 			Engine:                           pulumi.String("neptune"),
/// 			BackupRetentionPeriod:            pulumi.Int(5),
/// 			PreferredBackupWindow:            pulumi.String("07:00-09:00"),
/// 			SkipFinalSnapshot:                pulumi.Bool(true),
/// 			IamDatabaseAuthenticationEnabled: pulumi.Bool(true),
/// 			ApplyImmediately:                 pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var example []*neptune.ClusterInstance
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := neptune.NewClusterInstance(ctx, fmt.Sprintf("example-%v", key0), &neptune.ClusterInstanceArgs{
/// 				ClusterIdentifier: _default.ID(),
/// 				Engine:            pulumi.String("neptune"),
/// 				InstanceClass:     pulumi.String("db.r4.large"),
/// 				ApplyImmediately:  pulumi.Bool(true),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			example = append(example, __res)
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new Cluster("default", ClusterArgs.builder()
///             .clusterIdentifier("neptune-cluster-demo")
///             .engine("neptune")
///             .backupRetentionPeriod(5)
///             .preferredBackupWindow("07:00-09:00")
///             .skipFinalSnapshot(true)
///             .iamDatabaseAuthenticationEnabled(true)
///             .applyImmediately(true)
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new ClusterInstance("example-" + i, ClusterInstanceArgs.builder()
///                 .clusterIdentifier(default_.id())
///                 .engine("neptune")
///                 .instanceClass("db.r4.large")
///                 .applyImmediately(true)
///                 .build());
///
///
/// }
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:neptune:Cluster
///     properties:
///       clusterIdentifier: neptune-cluster-demo
///       engine: neptune
///       backupRetentionPeriod: 5
///       preferredBackupWindow: 07:00-09:00
///       skipFinalSnapshot: true
///       iamDatabaseAuthenticationEnabled: true
///       applyImmediately: true
///   example:
///     type: aws:neptune:ClusterInstance
///     properties:
///       clusterIdentifier: ${default.id}
///       engine: neptune
///       instanceClass: db.r4.large
///       applyImmediately: true
///     options: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.neptune.ClusterInstance` using the instance identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/clusterInstance:ClusterInstance example my-instance
/// ```
class ClusterInstance extends pulumi.CustomResource {
  /// The hostname of the instance. See also `endpoint` and `port`.
  late final pulumi.Output<String> address;
  /// Specifies whether any instance modifications
  /// are applied immediately, or during the next maintenance window. Default is`false`.
  late final pulumi.Output<bool> applyImmediately;
  /// Amazon Resource Name (ARN) of neptune instance
  late final pulumi.Output<String> arn;
  /// Indicates that minor engine upgrades will be applied automatically to the instance during the maintenance window. Default is `true`.
  late final pulumi.Output<bool?> autoMinorVersionUpgrade;
  /// The EC2 Availability Zone that the neptune instance is created in.
  late final pulumi.Output<String> availabilityZone;
  /// The identifier of the `aws.neptune.Cluster` in which to launch this instance.
  late final pulumi.Output<String> clusterIdentifier;
  /// The region-unique, immutable identifier for the neptune instance.
  late final pulumi.Output<String> dbiResourceId;
  /// The connection endpoint in `address:port` format.
  late final pulumi.Output<String> endpoint;
  /// The name of the database engine to be used for the neptune instance. Defaults to `neptune`. Valid Values: `neptune`.
  late final pulumi.Output<String?> engine;
  /// The neptune engine version. Currently configuring this argumnet has no effect.
  late final pulumi.Output<String> engineVersion;
  /// The identifier for the neptune instance, if omitted, this provider will assign a random, unique identifier.
  late final pulumi.Output<String> identifier;
  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  late final pulumi.Output<String> identifierPrefix;
  /// The instance class to use.
  late final pulumi.Output<String> instanceClass;
  /// The ARN for the KMS encryption key if one is set to the neptune cluster.
  late final pulumi.Output<String> kmsKeyArn;
  /// The name of the neptune parameter group to associate with this instance.
  late final pulumi.Output<String> neptuneParameterGroupName;
  /// A subnet group to associate with this neptune instance. **NOTE:** This must match the `neptune_subnet_group_name` of the attached `aws.neptune.Cluster`.
  late final pulumi.Output<String> neptuneSubnetGroupName;
  /// The port on which the DB accepts connections. Defaults to `8182`.
  late final pulumi.Output<int?> port;
  /// The daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00"
  late final pulumi.Output<String> preferredBackupWindow;
  /// The window to perform maintenance in.
  /// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  late final pulumi.Output<String> preferredMaintenanceWindow;
  /// Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer.
  late final pulumi.Output<int?> promotionTier;
  /// Bool to control if instance is publicly accessible. Default is `false`.
  late final pulumi.Output<bool?> publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Determines whether a final DB snapshot is created before the DB instance is deleted.
  late final pulumi.Output<bool?> skipFinalSnapshot;
  /// Specifies whether the neptune cluster is encrypted.
  late final pulumi.Output<bool> storageEncrypted;
  /// Storage type associated with the cluster `standard/iopt1`.
  late final pulumi.Output<String> storageType;
  /// A map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Boolean indicating if this instance is writable. `False` indicates this instance is a read replica.
  late final pulumi.Output<bool> writer;

  /// Creates a new [ClusterInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterInstance]. {@macro pulumi_neptune_cluster_instance_cluster_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterInstance(
    String name, {
    ClusterInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptune/clusterInstance:ClusterInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.applyImmediately = registerOutput<bool>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.autoMinorVersionUpgrade = registerOutput<bool?>('autoMinorVersionUpgrade');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.dbiResourceId = registerOutput<String>('dbiResourceId');
    this.endpoint = registerOutput<String>('endpoint');
    this.engine = registerOutput<String?>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.identifier = registerOutput<String>('identifier');
    this.identifierPrefix = registerOutput<String>('identifierPrefix');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.neptuneParameterGroupName = registerOutput<String>('neptuneParameterGroupName');
    this.neptuneSubnetGroupName = registerOutput<String>('neptuneSubnetGroupName');
    this.port = registerOutput<int?>('port');
    this.preferredBackupWindow = registerOutput<String>('preferredBackupWindow');
    this.preferredMaintenanceWindow = registerOutput<String>('preferredMaintenanceWindow');
    this.promotionTier = registerOutput<int?>('promotionTier');
    this.publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.storageType = registerOutput<String>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.writer = registerOutput<bool>('writer');
  }
}
