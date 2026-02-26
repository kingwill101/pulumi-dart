import 'package:pulumi/pulumi.dart';
import 'get_cluster_snapshot_args.dart';
import 'get_cluster_snapshot_result.dart';

/// Use this data source to get information about a DB Cluster Snapshot for use when provisioning DB clusters.
///
/// > **NOTE:** This data source does not apply to snapshots created on DB Instances.
/// See the <span pulumi-lang-nodejs="`aws.rds.Snapshot`" pulumi-lang-dotnet="`aws.rds.Snapshot`" pulumi-lang-go="`rds.Snapshot`" pulumi-lang-python="`rds.Snapshot`" pulumi-lang-yaml="`aws.rds.Snapshot`" pulumi-lang-java="`aws.rds.Snapshot`">`aws.rds.Snapshot`</span> data source for DB Instance snapshots.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const developmentFinalSnapshot = aws.rds.getClusterSnapshot({
/// dbClusterIdentifier: "development_cluster",
/// mostRecent: true,
/// });
/// // Use the last snapshot of the dev database before it was destroyed to create
/// // a new dev database.
/// const aurora = new aws.rds.Cluster("aurora", {
/// clusterIdentifier: "development_cluster",
/// snapshotIdentifier: developmentFinalSnapshot.then(developmentFinalSnapshot => developmentFinalSnapshot.id),
/// dbSubnetGroupName: "my_db_subnet_group",
/// });
/// const auroraClusterInstance = new aws.rds.ClusterInstance("aurora", {
/// clusterIdentifier: aurora.id,
/// instanceClass: aws.rds.InstanceType.T2_Small,
/// dbSubnetGroupName: "my_db_subnet_group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// development_final_snapshot = aws.rds.get_cluster_snapshot(db_cluster_identifier="development_cluster",
/// most_recent=True)
/// # Use the last snapshot of the dev database before it was destroyed to create
/// # a new dev database.
/// aurora = aws.rds.Cluster("aurora",
/// cluster_identifier="development_cluster",
/// snapshot_identifier=development_final_snapshot.id,
/// db_subnet_group_name="my_db_subnet_group")
/// aurora_cluster_instance = aws.rds.ClusterInstance("aurora",
/// cluster_identifier=aurora.id,
/// instance_class=aws.rds.InstanceType.T2_SMALL,
/// db_subnet_group_name="my_db_subnet_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var developmentFinalSnapshot = Aws.Rds.GetClusterSnapshot.Invoke(new()
/// {
/// DbClusterIdentifier = "development_cluster",
/// MostRecent = true,
/// });
///
/// // Use the last snapshot of the dev database before it was destroyed to create
/// // a new dev database.
/// var aurora = new Aws.Rds.Cluster("aurora", new()
/// {
/// ClusterIdentifier = "development_cluster",
/// SnapshotIdentifier = developmentFinalSnapshot.Apply(getClusterSnapshotResult => getClusterSnapshotResult.Id),
/// DbSubnetGroupName = "my_db_subnet_group",
/// });
///
/// var auroraClusterInstance = new Aws.Rds.ClusterInstance("aurora", new()
/// {
/// ClusterIdentifier = aurora.Id,
/// InstanceClass = Aws.Rds.InstanceType.T2_Small,
/// DbSubnetGroupName = "my_db_subnet_group",
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
/// developmentFinalSnapshot, err := rds.LookupClusterSnapshot(ctx, &rds.LookupClusterSnapshotArgs{
/// DbClusterIdentifier: pulumi.StringRef("development_cluster"),
/// MostRecent:          pulumi.BoolRef(true),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Use the last snapshot of the dev database before it was destroyed to create
/// // a new dev database.
/// aurora, err := rds.NewCluster(ctx, "aurora", &rds.ClusterArgs{
/// ClusterIdentifier:  pulumi.String("development_cluster"),
/// SnapshotIdentifier: pulumi.String(developmentFinalSnapshot.Id),
/// DbSubnetGroupName:  pulumi.String("my_db_subnet_group"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewClusterInstance(ctx, "aurora", &rds.ClusterInstanceArgs{
/// ClusterIdentifier: aurora.ID(),
/// InstanceClass:     pulumi.String(rds.InstanceType_T2_Small),
/// DbSubnetGroupName: pulumi.String("my_db_subnet_group"),
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
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetClusterSnapshotArgs;
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
/// import com.pulumi.aws.rds.ClusterInstance;
/// import com.pulumi.aws.rds.ClusterInstanceArgs;
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
/// final var developmentFinalSnapshot = RdsFunctions.getClusterSnapshot(GetClusterSnapshotArgs.builder()
/// .dbClusterIdentifier("development_cluster")
/// .mostRecent(true)
/// .build());
///
/// // Use the last snapshot of the dev database before it was destroyed to create
/// // a new dev database.
/// var aurora = new Cluster("aurora", ClusterArgs.builder()
/// .clusterIdentifier("development_cluster")
/// .snapshotIdentifier(developmentFinalSnapshot.id())
/// .dbSubnetGroupName("my_db_subnet_group")
/// .build());
///
/// var auroraClusterInstance = new ClusterInstance("auroraClusterInstance", ClusterInstanceArgs.builder()
/// .clusterIdentifier(aurora.id())
/// .instanceClass("db.t2.small")
/// .dbSubnetGroupName("my_db_subnet_group")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Use the last snapshot of the dev database before it was destroyed to create
/// # a new dev database.
/// aurora:
/// type: aws:rds:Cluster
/// properties:
/// clusterIdentifier: development_cluster
/// snapshotIdentifier: ${developmentFinalSnapshot.id}
/// dbSubnetGroupName: my_db_subnet_group
/// auroraClusterInstance:
/// type: aws:rds:ClusterInstance
/// name: aurora
/// properties:
/// clusterIdentifier: ${aurora.id}
/// instanceClass: db.t2.small
/// dbSubnetGroupName: my_db_subnet_group
/// variables:
/// developmentFinalSnapshot:
/// fn::invoke:
/// function: aws:rds:getClusterSnapshot
/// arguments:
/// dbClusterIdentifier: development_cluster
/// mostRecent: true
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterSnapshotResult> getClusterSnapshot(
  GetClusterSnapshotArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getClusterSnapshot:getClusterSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterSnapshotResult.fromMap(result);
}
