import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_snapshot_args.dart';
import 'cluster_snapshot_state.dart';

/// Manages an RDS database cluster snapshot for Aurora clusters. For managing RDS database instance snapshots, see the `aws.rds.Snapshot` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.ClusterSnapshot("example", {
///     dbClusterIdentifier: exampleAwsRdsCluster.id,
///     dbClusterSnapshotIdentifier: "resourcetestsnapshot1234",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.ClusterSnapshot("example",
///     db_cluster_identifier=example_aws_rds_cluster["id"],
///     db_cluster_snapshot_identifier="resourcetestsnapshot1234")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.ClusterSnapshot("example", new()
///     {
///         DbClusterIdentifier = exampleAwsRdsCluster.Id,
///         DbClusterSnapshotIdentifier = "resourcetestsnapshot1234",
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
/// 		_, err := rds.NewClusterSnapshot(ctx, "example", &rds.ClusterSnapshotArgs{
/// 			DbClusterIdentifier:         pulumi.Any(exampleAwsRdsCluster.Id),
/// 			DbClusterSnapshotIdentifier: pulumi.String("resourcetestsnapshot1234"),
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
/// import com.pulumi.aws.rds.ClusterSnapshot;
/// import com.pulumi.aws.rds.ClusterSnapshotArgs;
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
///         var example = new ClusterSnapshot("example", ClusterSnapshotArgs.builder()
///             .dbClusterIdentifier(exampleAwsRdsCluster.id())
///             .dbClusterSnapshotIdentifier("resourcetestsnapshot1234")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:ClusterSnapshot
///     properties:
///       dbClusterIdentifier: ${exampleAwsRdsCluster.id}
///       dbClusterSnapshotIdentifier: resourcetestsnapshot1234
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.ClusterSnapshot` using the cluster snapshot identifier. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterSnapshot:ClusterSnapshot example my-cluster-snapshot
/// ```
class ClusterSnapshot extends pulumi.CustomResource {
  /// Allocated storage size in gigabytes (GB).
  late final pulumi.Output<int> allocatedStorage;
  /// List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  late final pulumi.Output<List<String>> availabilityZones;
  /// The DB Cluster Identifier from which to take the snapshot.
  late final pulumi.Output<String> dbClusterIdentifier;
  /// The Amazon Resource Name (ARN) for the DB Cluster Snapshot.
  late final pulumi.Output<String> dbClusterSnapshotArn;
  /// The Identifier for the snapshot.
  late final pulumi.Output<String> dbClusterSnapshotIdentifier;
  /// Name of the database engine.
  late final pulumi.Output<String> engine;
  /// Version of the database engine for this DB cluster snapshot.
  late final pulumi.Output<String> engineVersion;
  /// If storage_encrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.
  late final pulumi.Output<String> kmsKeyId;
  /// License model information for the restored DB cluster.
  late final pulumi.Output<String> licenseModel;
  /// Port that the DB cluster was listening on at the time of the snapshot.
  late final pulumi.Output<int> port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  late final pulumi.Output<List<String>?> sharedAccounts;
  late final pulumi.Output<String> snapshotType;
  late final pulumi.Output<String> sourceDbClusterSnapshotArn;
  /// The status of this DB Cluster Snapshot.
  late final pulumi.Output<String> status;
  /// Whether the DB cluster snapshot is encrypted.
  late final pulumi.Output<bool> storageEncrypted;
  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The VPC ID associated with the DB cluster snapshot.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [ClusterSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterSnapshot]. {@macro pulumi_rds_cluster_snapshot_cluster_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterSnapshot(
    String name, {
    ClusterSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterSnapshot:ClusterSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedStorage = registerOutput<int>('allocatedStorage');
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    dbClusterSnapshotArn = registerOutput<String>('dbClusterSnapshotArn');
    dbClusterSnapshotIdentifier = registerOutput<String>('dbClusterSnapshotIdentifier');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    licenseModel = registerOutput<String>('licenseModel');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    sharedAccounts = registerOutput<List<String>?>('sharedAccounts');
    snapshotType = registerOutput<String>('snapshotType');
    sourceDbClusterSnapshotArn = registerOutput<String>('sourceDbClusterSnapshotArn');
    status = registerOutput<String>('status');
    storageEncrypted = registerOutput<bool>('storageEncrypted');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [ClusterSnapshot] resource's state with the given [name] and [id].
  static ClusterSnapshot get(
    String name,
    pulumi.Input<String> id, {
    ClusterSnapshotState? state,
  }) {
    return ClusterSnapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClusterSnapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterSnapshot:ClusterSnapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedStorage = registerOutput<int>('allocatedStorage');
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    dbClusterSnapshotArn = registerOutput<String>('dbClusterSnapshotArn');
    dbClusterSnapshotIdentifier = registerOutput<String>('dbClusterSnapshotIdentifier');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    licenseModel = registerOutput<String>('licenseModel');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    sharedAccounts = registerOutput<List<String>?>('sharedAccounts');
    snapshotType = registerOutput<String>('snapshotType');
    sourceDbClusterSnapshotArn = registerOutput<String>('sourceDbClusterSnapshotArn');
    status = registerOutput<String>('status');
    storageEncrypted = registerOutput<bool>('storageEncrypted');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }
}
