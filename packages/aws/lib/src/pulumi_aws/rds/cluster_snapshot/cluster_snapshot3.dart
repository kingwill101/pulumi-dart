import 'package:pulumi/pulumi.dart';
import 'cluster_snapshot_args3.dart';

/// Manages an RDS database cluster snapshot for Aurora clusters. For managing RDS database instance snapshots, see the <span pulumi-lang-nodejs="`aws.rds.Snapshot`" pulumi-lang-dotnet="`aws.rds.Snapshot`" pulumi-lang-go="`rds.Snapshot`" pulumi-lang-python="`rds.Snapshot`" pulumi-lang-yaml="`aws.rds.Snapshot`" pulumi-lang-java="`aws.rds.Snapshot`">`aws.rds.Snapshot`</span> resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.ClusterSnapshot("example", {
/// dbClusterIdentifier: exampleAwsRdsCluster.id,
/// dbClusterSnapshotIdentifier: "resourcetestsnapshot1234",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.ClusterSnapshot("example",
/// db_cluster_identifier=example_aws_rds_cluster["id"],
/// db_cluster_snapshot_identifier="resourcetestsnapshot1234")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rds.ClusterSnapshot("example", new()
/// {
/// DbClusterIdentifier = exampleAwsRdsCluster.Id,
/// DbClusterSnapshotIdentifier = "resourcetestsnapshot1234",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.NewClusterSnapshot(ctx, "example", &rds.ClusterSnapshotArgs{
/// DbClusterIdentifier:         pulumi.Any(exampleAwsRdsCluster.Id),
/// DbClusterSnapshotIdentifier: pulumi.String("resourcetestsnapshot1234"),
/// })
/// if err != nil {
/// return err
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ClusterSnapshot("example", ClusterSnapshotArgs.builder()
/// .dbClusterIdentifier(exampleAwsRdsCluster.id())
/// .dbClusterSnapshotIdentifier("resourcetestsnapshot1234")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rds:ClusterSnapshot
/// properties:
/// dbClusterIdentifier: ${exampleAwsRdsCluster.id}
/// dbClusterSnapshotIdentifier: resourcetestsnapshot1234
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.rds.ClusterSnapshot`" pulumi-lang-dotnet="`aws.rds.ClusterSnapshot`" pulumi-lang-go="`rds.ClusterSnapshot`" pulumi-lang-python="`rds.ClusterSnapshot`" pulumi-lang-yaml="`aws.rds.ClusterSnapshot`" pulumi-lang-java="`aws.rds.ClusterSnapshot`">`aws.rds.ClusterSnapshot`</span> using the cluster snapshot identifier. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterSnapshot:ClusterSnapshot example my-cluster-snapshot
/// ```
class ClusterSnapshot3 extends CustomResource {
  /// Allocated storage size in gigabytes (GB).
  late final Output<int> allocatedStorage;

  /// List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  late final Output<List<String>> availabilityZones;

  /// The DB Cluster Identifier from which to take the snapshot.
  late final Output<String> dbClusterIdentifier;

  /// The Amazon Resource Name (ARN) for the DB Cluster Snapshot.
  late final Output<String> dbClusterSnapshotArn;

  /// The Identifier for the snapshot.
  late final Output<String> dbClusterSnapshotIdentifier;

  /// Name of the database engine.
  late final Output<String> engine;

  /// Version of the database engine for this DB cluster snapshot.
  late final Output<String> engineVersion;

  /// If<span pulumi-lang-nodejs=" storageEncrypted " pulumi-lang-dotnet=" StorageEncrypted " pulumi-lang-go=" storageEncrypted " pulumi-lang-python=" storage_encrypted " pulumi-lang-yaml=" storageEncrypted " pulumi-lang-java=" storageEncrypted "> storage_encrypted </span>is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.
  late final Output<String> kmsKeyId;

  /// License model information for the restored DB cluster.
  late final Output<String> licenseModel;

  /// Port that the DB cluster was listening on at the time of the snapshot.
  late final Output<int> port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of AWS Account IDs to share the snapshot with. Use <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span> to make the snapshot public.
  late final Output<List<String>?> sharedAccounts;
  late final Output<String> snapshotType;
  late final Output<String> sourceDbClusterSnapshotArn;

  /// The status of this DB Cluster Snapshot.
  late final Output<String> status;

  /// Whether the DB cluster snapshot is encrypted.
  late final Output<bool> storageEncrypted;

  /// A map of tags to assign to the DB cluster. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC ID associated with the DB cluster snapshot.
  late final Output<String> vpcId;

  ClusterSnapshot3(
    String name, {
    ClusterSnapshotArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterSnapshot:ClusterSnapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocatedStorage = Output.createUnknown<int>();
    this.availabilityZones = Output.createUnknown<List<String>>();
    this.dbClusterIdentifier = Output.createUnknown<String>();
    this.dbClusterSnapshotArn = Output.createUnknown<String>();
    this.dbClusterSnapshotIdentifier = Output.createUnknown<String>();
    this.engine = Output.createUnknown<String>();
    this.engineVersion = Output.createUnknown<String>();
    this.kmsKeyId = Output.createUnknown<String>();
    this.licenseModel = Output.createUnknown<String>();
    this.port = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.sharedAccounts = Output.createUnknown<List<String>?>();
    this.snapshotType = Output.createUnknown<String>();
    this.sourceDbClusterSnapshotArn = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.storageEncrypted = Output.createUnknown<bool>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcId = Output.createUnknown<String>();
  }
}
