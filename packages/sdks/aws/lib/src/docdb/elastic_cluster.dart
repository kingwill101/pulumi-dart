import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_cluster_args.dart';
import 'elastic_cluster_state.dart';
import 'elastic_cluster_timeouts.dart';

/// Manages an AWS DocDB (DocumentDB) Elastic Cluster.
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
/// const example = new aws.docdb.ElasticCluster("example", {
///     name: "my-docdb-cluster",
///     adminUserName: "foo",
///     adminUserPassword: "mustbeeightchars",
///     authType: "PLAIN_TEXT",
///     shardCapacity: 2,
///     shardCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.docdb.ElasticCluster("example",
///     name="my-docdb-cluster",
///     admin_user_name="foo",
///     admin_user_password="mustbeeightchars",
///     auth_type="PLAIN_TEXT",
///     shard_capacity=2,
///     shard_count=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DocDB.ElasticCluster("example", new()
///     {
///         Name = "my-docdb-cluster",
///         AdminUserName = "foo",
///         AdminUserPassword = "mustbeeightchars",
///         AuthType = "PLAIN_TEXT",
///         ShardCapacity = 2,
///         ShardCount = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/docdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := docdb.NewElasticCluster(ctx, "example", &docdb.ElasticClusterArgs{
/// 			Name:              pulumi.String("my-docdb-cluster"),
/// 			AdminUserName:     pulumi.String("foo"),
/// 			AdminUserPassword: pulumi.String("mustbeeightchars"),
/// 			AuthType:          pulumi.String("PLAIN_TEXT"),
/// 			ShardCapacity:     pulumi.Int(2),
/// 			ShardCount:        pulumi.Int(1),
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
/// resource "aws_docdb_elasticcluster" "example" {
///   name                = "my-docdb-cluster"
///   admin_user_name     = "foo"
///   admin_user_password = "mustbeeightchars"
///   auth_type           = "PLAIN_TEXT"
///   shard_capacity      = 2
///   shard_count         = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.docdb.ElasticCluster;
/// import com.pulumi.aws.docdb.ElasticClusterArgs;
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
///         var example = new ElasticCluster("example", ElasticClusterArgs.builder()
///             .name("my-docdb-cluster")
///             .adminUserName("foo")
///             .adminUserPassword("mustbeeightchars")
///             .authType("PLAIN_TEXT")
///             .shardCapacity(2)
///             .shardCount(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:docdb:ElasticCluster
///     properties:
///       name: my-docdb-cluster
///       adminUserName: foo
///       adminUserPassword: mustbeeightchars
///       authType: PLAIN_TEXT
///       shardCapacity: 2
///       shardCount: 1
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DocDB Elastic cluster.
///
///
/// Using `pulumi import`, import DocDB (DocumentDB) Elastic Cluster using the `arn` argument. For example,
///
/// ```sh
/// $ pulumi import aws:docdb/elasticCluster:ElasticCluster example arn:aws:docdb-elastic:us-east-1:000011112222:cluster/12345678-7abc-def0-1234-56789abcdef
/// ```
class ElasticCluster extends pulumi.CustomResource {
  /// Name of the Elastic DocumentDB cluster administrator
  late final pulumi.Output<String> adminUserName;
  /// Password for the Elastic DocumentDB cluster administrator. Can contain any printable ASCII characters. Must be at least 8 characters
  late final pulumi.Output<String> adminUserPassword;
  /// ARN of the DocumentDB Elastic Cluster
  late final pulumi.Output<String> arn;
  /// Authentication type for the Elastic DocumentDB cluster. Valid values are `PLAIN_TEXT` and `SECRET_ARN`
  late final pulumi.Output<String> authType;
  /// The number of days for which automatic snapshots are retained. It should be in between 1 and 35. If not specified, the default value of 1 is set.
  late final pulumi.Output<int> backupRetentionPeriod;
  /// The DNS address of the DocDB instance
  late final pulumi.Output<String> endpoint;
  /// ARN of a KMS key that is used to encrypt the Elastic DocumentDB cluster. If not specified, the default encryption key that KMS creates for your account is used.
  late final pulumi.Output<String> kmsKeyId;
  /// Name of the Elastic DocumentDB cluster
  late final pulumi.Output<String> name;
  /// The daily time range during which automated backups are created if automated backups are enabled, as determined by the `backupRetentionPeriod`.
  late final pulumi.Output<String> preferredBackupWindow;
  /// Weekly time range during which system maintenance can occur in UTC. Format: `ddd:hh24:mi-ddd:hh24:mi`. If not specified, AWS will choose a random 30-minute window on a random day of the week.
  late final pulumi.Output<String> preferredMaintenanceWindow;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Number of vCPUs assigned to each elastic cluster shard. Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64
  late final pulumi.Output<int> shardCapacity;
  /// Number of shards assigned to the elastic cluster. Maximum is 32
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> shardCount;
  /// Number of replica instances applying to all shards in the elastic cluster. If not specified, the default value of 2 is set.
  late final pulumi.Output<int> shardInstanceCount;
  /// IDs of subnets in which the Elastic DocumentDB Cluster operates.
  late final pulumi.Output<List<String>> subnetIds;
  /// A map of tags to assign to the collection. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ElasticClusterTimeouts?> timeouts;
  /// List of VPC security groups to associate with the Elastic DocumentDB Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/docdb-elastic/create-cluster.html).
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  /// Creates a new [ElasticCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticCluster]. {@macro pulumi_docdb_elastic_cluster_elastic_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticCluster(
    String name, {
    ElasticClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:docdb/elasticCluster:ElasticCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminUserName = registerOutput<String>('adminUserName');
    adminUserPassword = registerOutput<String>('adminUserPassword');
    arn = registerOutput<String>('arn');
    authType = registerOutput<String>('authType');
    backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    endpoint = registerOutput<String>('endpoint');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    this.name = registerOutput<String>('name');
    preferredBackupWindow = registerOutput<String>('preferredBackupWindow');
    preferredMaintenanceWindow = registerOutput<String>('preferredMaintenanceWindow');
    region = registerOutput<String>('region');
    shardCapacity = registerOutput<int>('shardCapacity');
    shardCount = registerOutput<int>('shardCount');
    shardInstanceCount = registerOutput<int>('shardInstanceCount');
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ElasticClusterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
  }

  /// Gets an existing [ElasticCluster] resource's state with the given [name] and [id].
  static ElasticCluster get(
    String name,
    pulumi.Input<String> id, {
    ElasticClusterState? state,
  }) {
    return ElasticCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ElasticCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:docdb/elasticCluster:ElasticCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminUserName = registerOutput<String>('adminUserName');
    adminUserPassword = registerOutput<String>('adminUserPassword');
    arn = registerOutput<String>('arn');
    authType = registerOutput<String>('authType');
    backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    endpoint = registerOutput<String>('endpoint');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    this.name = registerOutput<String>('name');
    preferredBackupWindow = registerOutput<String>('preferredBackupWindow');
    preferredMaintenanceWindow = registerOutput<String>('preferredMaintenanceWindow');
    region = registerOutput<String>('region');
    shardCapacity = registerOutput<int>('shardCapacity');
    shardCount = registerOutput<int>('shardCount');
    shardInstanceCount = registerOutput<int>('shardInstanceCount');
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ElasticClusterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
