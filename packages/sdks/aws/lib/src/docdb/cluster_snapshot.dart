import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_snapshot_args.dart';
import 'cluster_snapshot_state.dart';

/// Manages a DocumentDB database cluster snapshot for DocumentDB clusters.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.docdb.ClusterSnapshot("example", {
///     dbClusterIdentifier: exampleAwsDocdbCluster.id,
///     dbClusterSnapshotIdentifier: "resourcetestsnapshot1234",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.docdb.ClusterSnapshot("example",
///     db_cluster_identifier=example_aws_docdb_cluster["id"],
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
///     var example = new Aws.DocDB.ClusterSnapshot("example", new()
///     {
///         DbClusterIdentifier = exampleAwsDocdbCluster.Id,
///         DbClusterSnapshotIdentifier = "resourcetestsnapshot1234",
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
/// 		_, err := docdb.NewClusterSnapshot(ctx, "example", &docdb.ClusterSnapshotArgs{
/// 			DbClusterIdentifier:         pulumi.Any(exampleAwsDocdbCluster.Id),
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
/// import com.pulumi.aws.docdb.ClusterSnapshot;
/// import com.pulumi.aws.docdb.ClusterSnapshotArgs;
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
///             .dbClusterIdentifier(exampleAwsDocdbCluster.id())
///             .dbClusterSnapshotIdentifier("resourcetestsnapshot1234")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:docdb:ClusterSnapshot
///     properties:
///       dbClusterIdentifier: ${exampleAwsDocdbCluster.id}
///       dbClusterSnapshotIdentifier: resourcetestsnapshot1234
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.docdb.ClusterSnapshot` using the cluster snapshot identifier. For example:
///
/// ```sh
/// $ pulumi import aws:docdb/clusterSnapshot:ClusterSnapshot example my-cluster-snapshot
/// ```
class ClusterSnapshot extends pulumi.CustomResource {
  /// List of EC2 Availability Zones that instances in the DocumentDB cluster snapshot can be restored in.
  late final pulumi.Output<List<String>> availabilityZones;
  /// The DocumentDB Cluster Identifier from which to take the snapshot.
  late final pulumi.Output<String> dbClusterIdentifier;
  /// The Amazon Resource Name (ARN) for the DocumentDB Cluster Snapshot.
  late final pulumi.Output<String> dbClusterSnapshotArn;
  /// The Identifier for the snapshot.
  late final pulumi.Output<String> dbClusterSnapshotIdentifier;
  /// Specifies the name of the database engine.
  late final pulumi.Output<String> engine;
  /// Version of the database engine for this DocumentDB cluster snapshot.
  late final pulumi.Output<String> engineVersion;
  /// If storage_encrypted is true, the AWS KMS key identifier for the encrypted DocumentDB cluster snapshot.
  late final pulumi.Output<String> kmsKeyId;
  /// Port that the DocumentDB cluster was listening on at the time of the snapshot.
  late final pulumi.Output<int> port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> snapshotType;
  late final pulumi.Output<String> sourceDbClusterSnapshotArn;
  /// The status of this DocumentDB Cluster Snapshot.
  late final pulumi.Output<String> status;
  /// Specifies whether the DocumentDB cluster snapshot is encrypted.
  late final pulumi.Output<bool> storageEncrypted;
  /// The VPC ID associated with the DocumentDB cluster snapshot.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [ClusterSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterSnapshot]. {@macro pulumi_docdb_cluster_snapshot_cluster_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterSnapshot(
    String name, {
    ClusterSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:docdb/clusterSnapshot:ClusterSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    this.dbClusterSnapshotArn = registerOutput<String>('dbClusterSnapshotArn');
    this.dbClusterSnapshotIdentifier = registerOutput<String>('dbClusterSnapshotIdentifier');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.port = registerOutput<int>('port');
    this.region = registerOutput<String>('region');
    this.snapshotType = registerOutput<String>('snapshotType');
    this.sourceDbClusterSnapshotArn = registerOutput<String>('sourceDbClusterSnapshotArn');
    this.status = registerOutput<String>('status');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.vpcId = registerOutput<String>('vpcId');
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
          'aws:docdb/clusterSnapshot:ClusterSnapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    this.dbClusterSnapshotArn = registerOutput<String>('dbClusterSnapshotArn');
    this.dbClusterSnapshotIdentifier = registerOutput<String>('dbClusterSnapshotIdentifier');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.port = registerOutput<int>('port');
    this.region = registerOutput<String>('region');
    this.snapshotType = registerOutput<String>('snapshotType');
    this.sourceDbClusterSnapshotArn = registerOutput<String>('sourceDbClusterSnapshotArn');
    this.status = registerOutput<String>('status');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
