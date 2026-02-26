import 'package:pulumi/pulumi.dart';
import 'cluster_instance_args.dart';

/// Provides an DocumentDB Cluster Resource Instance. A Cluster Instance Resource defines attributes that are specific to a single instance in a DocumentDB Cluster.
///
/// You do not designate a primary and subsequent replicas. Instead, you simply add DocumentDB Instances and DocumentDB manages the replication. You can use the count meta-parameter to make multiple instances and join them all to the same DocumentDB Cluster, or you may specify different Cluster Instance resources with various <span pulumi-lang-nodejs="`instanceClass`" pulumi-lang-dotnet="`InstanceClass`" pulumi-lang-go="`instanceClass`" pulumi-lang-python="`instance_class`" pulumi-lang-yaml="`instanceClass`" pulumi-lang-java="`instanceClass`">`instance_class`</span> sizes.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.docdb.Cluster("default", {
/// clusterIdentifier: "docdb-cluster-demo",
/// availabilityZones: [
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// masterUsername: "foo",
/// masterPassword: "barbut8chars",
/// });
/// const clusterInstances: aws.docdb.ClusterInstance[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
/// clusterInstances.push(new aws.docdb.ClusterInstance(`cluster_instances-${range.value}`, {
/// identifier: `docdb-cluster-demo-${range.value}`,
/// clusterIdentifier: _default.id,
/// instanceClass: "db.r5.large",
/// }));
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.docdb.Cluster("default",
/// cluster_identifier="docdb-cluster-demo",
/// availability_zones=[
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// master_username="foo",
/// master_password="barbut8chars")
/// cluster_instances = []
/// for range in [{"value": i} for i in range(0, 2)]:
/// cluster_instances.append(aws.docdb.ClusterInstance(f"cluster_instances-{range['value']}",
/// identifier=f"docdb-cluster-demo-{range['value']}",
/// cluster_identifier=default.id,
/// instance_class="db.r5.large"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.DocDB.Cluster("default", new()
/// {
/// ClusterIdentifier = "docdb-cluster-demo",
/// AvailabilityZones = new[]
/// {
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// },
/// MasterUsername = "foo",
/// MasterPassword = "barbut8chars",
/// });
///
/// var clusterInstances = new List<Aws.DocDB.ClusterInstance>();
/// for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// clusterInstances.Add(new Aws.DocDB.ClusterInstance($"cluster_instances-{range.Value}", new()
/// {
/// Identifier = $"docdb-cluster-demo-{range.Value}",
/// ClusterIdentifier = @default.Id,
/// InstanceClass = "db.r5.large",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/docdb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := docdb.NewCluster(ctx, "default", &docdb.ClusterArgs{
/// ClusterIdentifier: pulumi.String("docdb-cluster-demo"),
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-west-2a"),
/// pulumi.String("us-west-2b"),
/// pulumi.String("us-west-2c"),
/// },
/// MasterUsername: pulumi.String("foo"),
/// MasterPassword: pulumi.String("barbut8chars"),
/// })
/// if err != nil {
/// return err
/// }
/// var clusterInstances []*docdb.ClusterInstance
/// for index := 0; index < 2; index++ {
/// key0 := index
/// val0 := index
/// __res, err := docdb.NewClusterInstance(ctx, fmt.Sprintf("cluster_instances-%v", key0), &docdb.ClusterInstanceArgs{
/// Identifier:        pulumi.Sprintf("docdb-cluster-demo-%v", val0),
/// ClusterIdentifier: _default.ID(),
/// InstanceClass:     pulumi.String("db.r5.large"),
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
/// import com.pulumi.aws.docdb.Cluster;
/// import com.pulumi.aws.docdb.ClusterArgs;
/// import com.pulumi.aws.docdb.ClusterInstance;
/// import com.pulumi.aws.docdb.ClusterInstanceArgs;
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
/// .clusterIdentifier("docdb-cluster-demo")
/// .availabilityZones(
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c")
/// .masterUsername("foo")
/// .masterPassword("barbut8chars")
/// .build());
///
/// for (var i = 0; i < 2; i++) {
/// new ClusterInstance("clusterInstances-" + i, ClusterInstanceArgs.builder()
/// .identifier(String.format("docdb-cluster-demo-%s", range.value()))
/// .clusterIdentifier(default_.id())
/// .instanceClass("db.r5.large")
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
/// type: aws:docdb:ClusterInstance
/// name: cluster_instances
/// properties:
/// identifier: docdb-cluster-demo-${range.value}
/// clusterIdentifier: ${default.id}
/// instanceClass: db.r5.large
/// options: {}
/// default:
/// type: aws:docdb:Cluster
/// properties:
/// clusterIdentifier: docdb-cluster-demo
/// availabilityZones:
/// - us-west-2a
/// - us-west-2b
/// - us-west-2c
/// masterUsername: foo
/// masterPassword: barbut8chars
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DocumentDB Cluster Instances using the <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:docdb/clusterInstance:ClusterInstance prod_instance_1 aurora-cluster-instance-1
/// ```
class ClusterInstance extends CustomResource {
  /// Whether any database modifications are applied immediately, or during the next maintenance window. Default is<span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> applyImmediately;

  /// ARN of cluster instance
  late final Output<String> arn;

  /// Parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set (see [docs](https://docs.aws.amazon.com/documentdb/latest/developerguide/API_DBInstance.html)). Default <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> autoMinorVersionUpgrade;

  /// EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/documentdb/latest/developerguide/API_CreateDBInstance.html) about the details.
  late final Output<String> availabilityZone;

  /// Identifier of the certificate authority (CA) certificate for the DB instance.
  late final Output<String> caCertIdentifier;

  /// Whether to restart the DB instance when rotating its SSL/TLS certificate. By default, AWS restarts the DB instance when you rotate your SSL/TLS certificate. The certificate is not updated until the DB instance is restarted. Set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> only if you are not using SSL/TLS to connect to the DB instance.
  late final Output<String?> certificateRotationRestart;

  /// Identifier of the <span pulumi-lang-nodejs="`aws.docdb.Cluster`" pulumi-lang-dotnet="`aws.docdb.Cluster`" pulumi-lang-go="`docdb.Cluster`" pulumi-lang-python="`docdb.Cluster`" pulumi-lang-yaml="`aws.docdb.Cluster`" pulumi-lang-java="`aws.docdb.Cluster`">`aws.docdb.Cluster`</span> in which to launch this instance.
  late final Output<String> clusterIdentifier;

  /// Copy all DB instance <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> to snapshots. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> copyTagsToSnapshot;

  /// DB subnet group to associate with this DB instance.
  late final Output<String> dbSubnetGroupName;

  /// Region-unique, immutable identifier for the DB instance.
  late final Output<String> dbiResourceId;

  /// Value that indicates whether to enable Performance Insights for the DB Instance. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. See [docs] (https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html) about the details.
  late final Output<bool?> enablePerformanceInsights;

  /// DNS address for this instance. May not be writable
  late final Output<String> endpoint;

  /// Name of the database engine to be used for the DocumentDB instance. Defaults to <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>. Valid Values: <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>.
  late final Output<String?> engine;

  /// Database engine version
  late final Output<String> engineVersion;

  /// The identifier for the DocumentDB instance, if omitted, the provider will assign a random, unique identifier.
  late final Output<String> identifier;

  /// Creates a unique identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>.
  late final Output<String> identifierPrefix;

  /// Instance class to use. For details on CPU and memory, see [Scaling for DocumentDB Instances](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-manage-performance.html#db-cluster-manage-scaling-instance). See the <span pulumi-lang-nodejs="`aws.docdb.getOrderableDbInstance`" pulumi-lang-dotnet="`aws.docdb.getOrderableDbInstance`" pulumi-lang-go="`docdb.getOrderableDbInstance`" pulumi-lang-python="`docdb_get_orderable_db_instance`" pulumi-lang-yaml="`aws.docdb.getOrderableDbInstance`" pulumi-lang-java="`aws.docdb.getOrderableDbInstance`">`aws.docdb.getOrderableDbInstance`</span> data source. See [AWS Documentation](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-instance-classes.html#db-instance-class-specs) for complete details.
  late final Output<String> instanceClass;

  /// ARN for the KMS encryption key if one is set to the cluster.
  late final Output<String> kmsKeyId;

  /// KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your default KMS key.
  late final Output<String> performanceInsightsKmsKeyId;

  /// Database port
  late final Output<int> port;

  /// Daily time range during which automated backups are created if automated backups are enabled.
  late final Output<String> preferredBackupWindow;

  /// Window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  late final Output<String> preferredMaintenanceWindow;

  /// Failover Priority setting on instance level. Default <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. The reader who has lower tier has higher priority to get promoter to writer.
  late final Output<int?> promotionTier;
  late final Output<bool> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether the DB cluster is encrypted.
  late final Output<bool> storageEncrypted;

  /// Map of tags to assign to the instance. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Whether this instance is writable. `False` indicates this instance is a read replica.
  late final Output<bool> writer;

  ClusterInstance(
    String name, {
    ClusterInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:docdb/clusterInstance:ClusterInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applyImmediately = registerOutput<bool?>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.autoMinorVersionUpgrade =
        registerOutput<bool?>('autoMinorVersionUpgrade');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.caCertIdentifier = registerOutput<String>('caCertIdentifier');
    this.certificateRotationRestart =
        registerOutput<String?>('certificateRotationRestart');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.copyTagsToSnapshot = registerOutput<bool?>('copyTagsToSnapshot');
    this.dbSubnetGroupName = registerOutput<String>('dbSubnetGroupName');
    this.dbiResourceId = registerOutput<String>('dbiResourceId');
    this.enablePerformanceInsights =
        registerOutput<bool?>('enablePerformanceInsights');
    this.endpoint = registerOutput<String>('endpoint');
    this.engine = registerOutput<String?>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.identifier = registerOutput<String>('identifier');
    this.identifierPrefix = registerOutput<String>('identifierPrefix');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.performanceInsightsKmsKeyId =
        registerOutput<String>('performanceInsightsKmsKeyId');
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
