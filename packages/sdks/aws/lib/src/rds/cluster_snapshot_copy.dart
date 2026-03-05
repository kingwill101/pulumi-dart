import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_snapshot_copy_args.dart';
import 'cluster_snapshot_copy_state.dart';
import 'cluster_snapshot_copy_timeouts.dart';

/// Manages an RDS database cluster snapshot copy. For managing RDS database instance snapshot copies, see the `aws.rds.SnapshotCopy` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Cluster("example", {
///     clusterIdentifier: "aurora-cluster-demo",
///     databaseName: "test",
///     engine: aws.rds.EngineType.AuroraMysql,
///     masterUsername: "tfacctest",
///     masterPassword: "avoid-plaintext-passwords",
///     skipFinalSnapshot: true,
/// });
/// const exampleClusterSnapshot = new aws.rds.ClusterSnapshot("example", {
///     dbClusterIdentifier: example.clusterIdentifier,
///     dbClusterSnapshotIdentifier: "example",
/// });
/// const exampleClusterSnapshotCopy = new aws.rds.ClusterSnapshotCopy("example", {
///     sourceDbClusterSnapshotIdentifier: exampleClusterSnapshot.dbClusterSnapshotArn,
///     targetDbClusterSnapshotIdentifier: "example-copy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Cluster("example",
///     cluster_identifier="aurora-cluster-demo",
///     database_name="test",
///     engine=aws.rds.EngineType.AURORA_MYSQL,
///     master_username="tfacctest",
///     master_password="avoid-plaintext-passwords",
///     skip_final_snapshot=True)
/// example_cluster_snapshot = aws.rds.ClusterSnapshot("example",
///     db_cluster_identifier=example.cluster_identifier,
///     db_cluster_snapshot_identifier="example")
/// example_cluster_snapshot_copy = aws.rds.ClusterSnapshotCopy("example",
///     source_db_cluster_snapshot_identifier=example_cluster_snapshot.db_cluster_snapshot_arn,
///     target_db_cluster_snapshot_identifier="example-copy")
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
///         ClusterIdentifier = "aurora-cluster-demo",
///         DatabaseName = "test",
///         Engine = Aws.Rds.EngineType.AuroraMysql,
///         MasterUsername = "tfacctest",
///         MasterPassword = "avoid-plaintext-passwords",
///         SkipFinalSnapshot = true,
///     });
///
///     var exampleClusterSnapshot = new Aws.Rds.ClusterSnapshot("example", new()
///     {
///         DbClusterIdentifier = example.ClusterIdentifier,
///         DbClusterSnapshotIdentifier = "example",
///     });
///
///     var exampleClusterSnapshotCopy = new Aws.Rds.ClusterSnapshotCopy("example", new()
///     {
///         SourceDbClusterSnapshotIdentifier = exampleClusterSnapshot.DbClusterSnapshotArn,
///         TargetDbClusterSnapshotIdentifier = "example-copy",
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
/// 			ClusterIdentifier: pulumi.String("aurora-cluster-demo"),
/// 			DatabaseName:      pulumi.String("test"),
/// 			Engine:            pulumi.String(rds.EngineTypeAuroraMysql),
/// 			MasterUsername:    pulumi.String("tfacctest"),
/// 			MasterPassword:    pulumi.String("avoid-plaintext-passwords"),
/// 			SkipFinalSnapshot: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleClusterSnapshot, err := rds.NewClusterSnapshot(ctx, "example", &rds.ClusterSnapshotArgs{
/// 			DbClusterIdentifier:         example.ClusterIdentifier,
/// 			DbClusterSnapshotIdentifier: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewClusterSnapshotCopy(ctx, "example", &rds.ClusterSnapshotCopyArgs{
/// 			SourceDbClusterSnapshotIdentifier: exampleClusterSnapshot.DbClusterSnapshotArn,
/// 			TargetDbClusterSnapshotIdentifier: pulumi.String("example-copy"),
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
/// import com.pulumi.aws.rds.ClusterSnapshot;
/// import com.pulumi.aws.rds.ClusterSnapshotArgs;
/// import com.pulumi.aws.rds.ClusterSnapshotCopy;
/// import com.pulumi.aws.rds.ClusterSnapshotCopyArgs;
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
///             .clusterIdentifier("aurora-cluster-demo")
///             .databaseName("test")
///             .engine("aurora-mysql")
///             .masterUsername("tfacctest")
///             .masterPassword("avoid-plaintext-passwords")
///             .skipFinalSnapshot(true)
///             .build());
///
///         var exampleClusterSnapshot = new ClusterSnapshot("exampleClusterSnapshot", ClusterSnapshotArgs.builder()
///             .dbClusterIdentifier(example.clusterIdentifier())
///             .dbClusterSnapshotIdentifier("example")
///             .build());
///
///         var exampleClusterSnapshotCopy = new ClusterSnapshotCopy("exampleClusterSnapshotCopy", ClusterSnapshotCopyArgs.builder()
///             .sourceDbClusterSnapshotIdentifier(exampleClusterSnapshot.dbClusterSnapshotArn())
///             .targetDbClusterSnapshotIdentifier("example-copy")
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
///       clusterIdentifier: aurora-cluster-demo
///       databaseName: test
///       engine: aurora-mysql
///       masterUsername: tfacctest
///       masterPassword: avoid-plaintext-passwords
///       skipFinalSnapshot: true
///   exampleClusterSnapshot:
///     type: aws:rds:ClusterSnapshot
///     name: example
///     properties:
///       dbClusterIdentifier: ${example.clusterIdentifier}
///       dbClusterSnapshotIdentifier: example
///   exampleClusterSnapshotCopy:
///     type: aws:rds:ClusterSnapshotCopy
///     name: example
///     properties:
///       sourceDbClusterSnapshotIdentifier: ${exampleClusterSnapshot.dbClusterSnapshotArn}
///       targetDbClusterSnapshotIdentifier: example-copy
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.ClusterSnapshotCopy` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterSnapshotCopy:ClusterSnapshotCopy example my-snapshot
/// ```
class ClusterSnapshotCopy extends pulumi.CustomResource {
  /// Specifies the allocated storage size in gigabytes (GB).
  late final pulumi.Output<int> allocatedStorage;
  /// Whether to copy existing tags. Defaults to `false`.
  late final pulumi.Output<bool?> copyTags;
  /// The Amazon Resource Name (ARN) for the DB cluster snapshot.
  late final pulumi.Output<String> dbClusterSnapshotArn;
  /// The Destination region to place snapshot copy.
  late final pulumi.Output<String?> destinationRegion;
  /// Specifies the name of the database engine.
  late final pulumi.Output<String> engine;
  /// Specifies the version of the database engine.
  late final pulumi.Output<String> engineVersion;
  /// KMS key ID.
  late final pulumi.Output<String?> kmsKeyId;
  /// License model information for the restored DB instance.
  late final pulumi.Output<String> licenseModel;
  /// URL that contains a Signature Version 4 signed request.
  late final pulumi.Output<String?> presignedUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  late final pulumi.Output<List<String>?> sharedAccounts;
  late final pulumi.Output<String> snapshotType;
  /// Identifier of the source snapshot.
  late final pulumi.Output<String> sourceDbClusterSnapshotIdentifier;
  /// Specifies whether the DB cluster snapshot is encrypted.
  late final pulumi.Output<bool> storageEncrypted;
  /// Specifies the storage type associated with DB cluster snapshot.
  late final pulumi.Output<String> storageType;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Identifier for the snapshot.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> targetDbClusterSnapshotIdentifier;
  late final pulumi.Output<ClusterSnapshotCopyTimeouts?> timeouts;
  /// Provides the VPC ID associated with the DB cluster snapshot.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [ClusterSnapshotCopy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterSnapshotCopy]. {@macro pulumi_rds_cluster_snapshot_copy_cluster_snapshot_copy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterSnapshotCopy(
    String name, {
    ClusterSnapshotCopyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterSnapshotCopy:ClusterSnapshotCopy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedStorage = registerOutput<int>('allocatedStorage');
    copyTags = registerOutput<bool?>('copyTags');
    dbClusterSnapshotArn = registerOutput<String>('dbClusterSnapshotArn');
    destinationRegion = registerOutput<String?>('destinationRegion');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    licenseModel = registerOutput<String>('licenseModel');
    presignedUrl = registerOutput<String?>('presignedUrl');
    region = registerOutput<String>('region');
    sharedAccounts = registerOutput<List<String>?>('sharedAccounts');
    snapshotType = registerOutput<String>('snapshotType');
    sourceDbClusterSnapshotIdentifier = registerOutput<String>('sourceDbClusterSnapshotIdentifier');
    storageEncrypted = registerOutput<bool>('storageEncrypted');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetDbClusterSnapshotIdentifier = registerOutput<String>('targetDbClusterSnapshotIdentifier');
    timeouts = registerOutput<ClusterSnapshotCopyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSnapshotCopyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [ClusterSnapshotCopy] resource's state with the given [name] and [id].
  static ClusterSnapshotCopy get(
    String name,
    pulumi.Input<String> id, {
    ClusterSnapshotCopyState? state,
  }) {
    return ClusterSnapshotCopy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClusterSnapshotCopy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterSnapshotCopy:ClusterSnapshotCopy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedStorage = registerOutput<int>('allocatedStorage');
    copyTags = registerOutput<bool?>('copyTags');
    dbClusterSnapshotArn = registerOutput<String>('dbClusterSnapshotArn');
    destinationRegion = registerOutput<String?>('destinationRegion');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    licenseModel = registerOutput<String>('licenseModel');
    presignedUrl = registerOutput<String?>('presignedUrl');
    region = registerOutput<String>('region');
    sharedAccounts = registerOutput<List<String>?>('sharedAccounts');
    snapshotType = registerOutput<String>('snapshotType');
    sourceDbClusterSnapshotIdentifier = registerOutput<String>('sourceDbClusterSnapshotIdentifier');
    storageEncrypted = registerOutput<bool>('storageEncrypted');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetDbClusterSnapshotIdentifier = registerOutput<String>('targetDbClusterSnapshotIdentifier');
    timeouts = registerOutput<ClusterSnapshotCopyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSnapshotCopyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcId = registerOutput<String>('vpcId');
  }
}
