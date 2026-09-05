import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_parameter_group_args.dart';
import 'get_cluster_parameter_group_result.dart';
import 'get_cluster_result.dart';
import 'get_cluster_snapshot_args.dart';
import 'get_cluster_snapshot_result.dart';
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';
import 'get_engine_version_args.dart';
import 'get_engine_version_result.dart';
import 'get_event_categories_args.dart';
import 'get_event_categories_result.dart';
import 'get_global_cluster_args.dart';
import 'get_global_cluster_result.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_orderable_db_instance_args.dart';
import 'get_orderable_db_instance_result.dart';
import 'get_parameter_group_args.dart';
import 'get_parameter_group_result.dart';
import 'get_proxy_args.dart';
import 'get_proxy_result.dart';
import 'get_reserved_instance_offering_args.dart';
import 'get_reserved_instance_offering_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';
import 'get_snapshots_args.dart';
import 'get_snapshots_result.dart';
import 'get_subnet_group_args.dart';
import 'get_subnet_group_result.dart';

/// Information about an RDS Certificate.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.rds.getCertificate({
///     latestValidTill: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_certificate(latest_valid_till=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Rds.GetCertificate.Invoke(new()
///     {
///         LatestValidTill = true,
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
/// 		_, err := rds.LookupCertificate(ctx, &rds.LookupCertificateArgs{
/// 			LatestValidTill: pulumi.BoolRef(true),
/// 		}, nil)
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
/// data "aws_rds_getcertificate" "example" {
///   latest_valid_till = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetCertificateArgs;
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
///         final var example = RdsFunctions.getCertificate(GetCertificateArgs.builder()
///             .latestValidTill(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:rds:getCertificate
///       arguments:
///         latestValidTill: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_certificate_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

pulumi.Output<GetCertificateResult> getCertificateOutput(
  GetCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getCertificate:getCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateResult.fromMap);
}

/// Provides information about an RDS cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const clusterName = aws.rds.getCluster({
///     clusterIdentifier: "clusterName",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cluster_name = aws.rds.get_cluster(cluster_identifier="clusterName")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var clusterName = Aws.Rds.GetCluster.Invoke(new()
///     {
///         ClusterIdentifier = "clusterName",
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
/// 		_, err := rds.LookupCluster(ctx, &rds.LookupClusterArgs{
/// 			ClusterIdentifier: "clusterName",
/// 		}, nil)
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
/// data "aws_rds_getcluster" "clusterName" {
///   cluster_identifier = "clusterName"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetClusterArgs;
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
///         final var clusterName = RdsFunctions.getCluster(GetClusterArgs.builder()
///             .clusterIdentifier("clusterName")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   clusterName:
///     fn::invoke:
///       function: aws:rds:getCluster
///       arguments:
///         clusterIdentifier: clusterName
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getCluster:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Information about an RDS cluster parameter group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.rds.getClusterParameterGroup({
///     name: "default.postgres15",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_cluster_parameter_group(name="default.postgres15")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Rds.GetClusterParameterGroup.Invoke(new()
///     {
///         Name = "default.postgres15",
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
/// 		_, err := rds.LookupClusterParameterGroup(ctx, &rds.LookupClusterParameterGroupArgs{
/// 			Name: "default.postgres15",
/// 		}, nil)
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
/// data "aws_rds_getclusterparametergroup" "test" {
///   name = "default.postgres15"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetClusterParameterGroupArgs;
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
///         final var test = RdsFunctions.getClusterParameterGroup(GetClusterParameterGroupArgs.builder()
///             .name("default.postgres15")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:rds:getClusterParameterGroup
///       arguments:
///         name: default.postgres15
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_cluster_parameter_group_get_cluster_parameter_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterParameterGroupResult> getClusterParameterGroup(
  GetClusterParameterGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getClusterParameterGroup:getClusterParameterGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterParameterGroupResult.fromMap(result);
}

pulumi.Output<GetClusterParameterGroupResult> getClusterParameterGroupOutput(
  GetClusterParameterGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getClusterParameterGroup:getClusterParameterGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterParameterGroupResult.fromMap);
}

/// Use this data source to get information about a DB Cluster Snapshot for use when provisioning DB clusters.
///
/// &gt; **NOTE:** This data source does not apply to snapshots created on DB Instances.
/// See the `aws.rds.Snapshot` data source for DB Instance snapshots.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const developmentFinalSnapshot = aws.rds.getClusterSnapshot({
///     dbClusterIdentifier: "development_cluster",
///     mostRecent: true,
/// });
/// // Use the last snapshot of the dev database before it was destroyed to create
/// // a new dev database.
/// const aurora = new aws.rds.Cluster("aurora", {
///     clusterIdentifier: "development_cluster",
///     snapshotIdentifier: developmentFinalSnapshot.then(developmentFinalSnapshot => developmentFinalSnapshot.id),
///     dbSubnetGroupName: "my_db_subnet_group",
/// }, {
///     ignoreChanges: ["snapshotIdentifier"],
/// });
/// const auroraClusterInstance = new aws.rds.ClusterInstance("aurora", {
///     clusterIdentifier: aurora.id,
///     instanceClass: aws.rds.InstanceType.T2_Small,
///     dbSubnetGroupName: "my_db_subnet_group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// development_final_snapshot = aws.rds.get_cluster_snapshot(db_cluster_identifier="development_cluster",
///     most_recent=True)
/// # Use the last snapshot of the dev database before it was destroyed to create
/// # a new dev database.
/// aurora = aws.rds.Cluster("aurora",
///     cluster_identifier="development_cluster",
///     snapshot_identifier=development_final_snapshot.id,
///     db_subnet_group_name="my_db_subnet_group",
///     opts = pulumi.ResourceOptions(ignore_changes=["snapshotIdentifier"]))
/// aurora_cluster_instance = aws.rds.ClusterInstance("aurora",
///     cluster_identifier=aurora.id,
///     instance_class=aws.rds.InstanceType.T2_SMALL,
///     db_subnet_group_name="my_db_subnet_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var developmentFinalSnapshot = Aws.Rds.GetClusterSnapshot.Invoke(new()
///     {
///         DbClusterIdentifier = "development_cluster",
///         MostRecent = true,
///     });
///
///     // Use the last snapshot of the dev database before it was destroyed to create
///     // a new dev database.
///     var aurora = new Aws.Rds.Cluster("aurora", new()
///     {
///         ClusterIdentifier = "development_cluster",
///         SnapshotIdentifier = developmentFinalSnapshot.Apply(getClusterSnapshotResult => getClusterSnapshotResult.Id),
///         DbSubnetGroupName = "my_db_subnet_group",
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "snapshotIdentifier",
///         },
///     });
///
///     var auroraClusterInstance = new Aws.Rds.ClusterInstance("aurora", new()
///     {
///         ClusterIdentifier = aurora.Id,
///         InstanceClass = Aws.Rds.InstanceType.T2_Small,
///         DbSubnetGroupName = "my_db_subnet_group",
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
/// 		developmentFinalSnapshot, err := rds.LookupClusterSnapshot(ctx, &rds.LookupClusterSnapshotArgs{
/// 			DbClusterIdentifier: pulumi.StringRef("development_cluster"),
/// 			MostRecent:          pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Use the last snapshot of the dev database before it was destroyed to create
/// 		// a new dev database.
/// 		aurora, err := rds.NewCluster(ctx, "aurora", &rds.ClusterArgs{
/// 			ClusterIdentifier:  pulumi.String("development_cluster"),
/// 			SnapshotIdentifier: pulumi.String(developmentFinalSnapshot.Id),
/// 			DbSubnetGroupName:  pulumi.String("my_db_subnet_group"),
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"snapshotIdentifier",
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewClusterInstance(ctx, "aurora", &rds.ClusterInstanceArgs{
/// 			ClusterIdentifier: aurora.ID().ToIDOutput().ToStringOutput(),
/// 			InstanceClass:     pulumi.String(rds.InstanceType_T2_Small),
/// 			DbSubnetGroupName: pulumi.String("my_db_subnet_group"),
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
/// data "aws_rds_getclustersnapshot" "developmentFinalSnapshot" {
///   db_cluster_identifier = "development_cluster"
///   most_recent           = true
/// }
///
/// # Use the last snapshot of the dev database before it was destroyed to create
/// # a new dev database.
/// resource "aws_rds_cluster" "aurora" {
///   lifecycle {
///     ignore_changes = [snapshotIdentifier]
///   }
///   cluster_identifier   = "development_cluster"
///   snapshot_identifier  = data.aws_rds_getclustersnapshot.developmentFinalSnapshot.id
///   db_subnet_group_name = "my_db_subnet_group"
/// }
/// resource "aws_rds_clusterinstance" "aurora" {
///   cluster_identifier   = aws_rds_cluster.aurora.id
///   instance_class       = "db.t2.small"
///   db_subnet_group_name = "my_db_subnet_group"
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
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var developmentFinalSnapshot = RdsFunctions.getClusterSnapshot(GetClusterSnapshotArgs.builder()
///             .dbClusterIdentifier("development_cluster")
///             .mostRecent(true)
///             .build());
///
///         // Use the last snapshot of the dev database before it was destroyed to create
///         // a new dev database.
///         var aurora = new Cluster("aurora", ClusterArgs.builder()
///             .clusterIdentifier("development_cluster")
///             .snapshotIdentifier(developmentFinalSnapshot.id())
///             .dbSubnetGroupName("my_db_subnet_group")
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("snapshotIdentifier")
///                 .build());
///
///         var auroraClusterInstance = new ClusterInstance("auroraClusterInstance", ClusterInstanceArgs.builder()
///             .clusterIdentifier(aurora.id())
///             .instanceClass("db.t2.small")
///             .dbSubnetGroupName("my_db_subnet_group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Use the last snapshot of the dev database before it was destroyed to create
///   # a new dev database.
///   aurora:
///     type: aws:rds:Cluster
///     properties:
///       clusterIdentifier: development_cluster
///       snapshotIdentifier: ${developmentFinalSnapshot.id}
///       dbSubnetGroupName: my_db_subnet_group
///     options:
///       ignoreChanges:
///         - snapshotIdentifier
///   auroraClusterInstance:
///     type: aws:rds:ClusterInstance
///     name: aurora
///     properties:
///       clusterIdentifier: ${aurora.id}
///       instanceClass: db.t2.small
///       dbSubnetGroupName: my_db_subnet_group
/// variables:
///   developmentFinalSnapshot:
///     fn::invoke:
///       function: aws:rds:getClusterSnapshot
///       arguments:
///         dbClusterIdentifier: development_cluster
///         mostRecent: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_cluster_snapshot_get_cluster_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterSnapshotResult> getClusterSnapshot(
  GetClusterSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getClusterSnapshot:getClusterSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterSnapshotResult.fromMap(result);
}

pulumi.Output<GetClusterSnapshotResult> getClusterSnapshotOutput(
  GetClusterSnapshotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getClusterSnapshot:getClusterSnapshot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterSnapshotResult.fromMap);
}

/// Data source for managing an AWS RDS (Relational Database) Clusters.
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
/// const example = aws.rds.getClusters({
///     filters: [{
///         name: "engine",
///         values: ["aurora-postgresql"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_clusters(filters=[{
///     "name": "engine",
///     "values": ["aurora-postgresql"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Rds.GetClusters.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Rds.Inputs.GetClustersFilterInputArgs
///             {
///                 Name = "engine",
///                 Values = new[]
///                 {
///                     "aurora-postgresql",
///                 },
///             },
///         },
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
/// 		_, err := rds.GetClusters(ctx, &rds.GetClustersArgs{
/// 			Filters: []rds.GetClustersFilter{
/// 				{
/// 					Name: "engine",
/// 					Values: []string{
/// 						"aurora-postgresql",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_rds_getclusters" "example" {
///   filters {
///     name   = "engine"
///     values = ["aurora-postgresql"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetClustersArgs;
/// import com.pulumi.aws.rds.inputs.GetClustersFilterArgs;
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
///         final var example = RdsFunctions.getClusters(GetClustersArgs.builder()
///             .filters(GetClustersFilterArgs.builder()
///                 .name("engine")
///                 .values("aurora-postgresql")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:rds:getClusters
///       arguments:
///         filters:
///           - name: engine
///             values:
///               - aurora-postgresql
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_clusters_get_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}

pulumi.Output<GetClustersResult> getClustersOutput(
  GetClustersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getClusters:getClusters',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClustersResult.fromMap);
}

/// Information about an RDS engine version.
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
/// const test = aws.rds.getEngineVersion({
///     engine: "mysql",
///     preferredVersions: [
///         "8.0.27",
///         "8.0.26",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_engine_version(engine="mysql",
///     preferred_versions=[
///         "8.0.27",
///         "8.0.26",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Rds.GetEngineVersion.Invoke(new()
///     {
///         Engine = "mysql",
///         PreferredVersions = new[]
///         {
///             "8.0.27",
///             "8.0.26",
///         },
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
/// 		_, err := rds.GetEngineVersion(ctx, &rds.GetEngineVersionArgs{
/// 			Engine: "mysql",
/// 			PreferredVersions: []string{
/// 				"8.0.27",
/// 				"8.0.26",
/// 			},
/// 		}, nil)
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
/// data "aws_rds_getengineversion" "test" {
///   engine             = "mysql"
///   preferred_versions = ["8.0.27", "8.0.26"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetEngineVersionArgs;
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
///         final var test = RdsFunctions.getEngineVersion(GetEngineVersionArgs.builder()
///             .engine("mysql")
///             .preferredVersions(
///                 "8.0.27",
///                 "8.0.26")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:rds:getEngineVersion
///       arguments:
///         engine: mysql
///         preferredVersions:
///           - 8.0.27
///           - 8.0.26
/// ```
///
///
/// ### With `filter`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.rds.getEngineVersion({
///     filters: [{
///         name: "engine-mode",
///         values: ["serverless"],
///     }],
///     engine: "aurora-postgresql",
///     version: "10.14",
///     includeAll: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_engine_version(filters=[{
///         "name": "engine-mode",
///         "values": ["serverless"],
///     }],
///     engine="aurora-postgresql",
///     version="10.14",
///     include_all=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Rds.GetEngineVersion.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Rds.Inputs.GetEngineVersionFilterInputArgs
///             {
///                 Name = "engine-mode",
///                 Values = new[]
///                 {
///                     "serverless",
///                 },
///             },
///         },
///         Engine = "aurora-postgresql",
///         Version = "10.14",
///         IncludeAll = true,
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
/// 		_, err := rds.GetEngineVersion(ctx, &rds.GetEngineVersionArgs{
/// 			Filters: []rds.GetEngineVersionFilter{
/// 				{
/// 					Name: "engine-mode",
/// 					Values: []string{
/// 						"serverless",
/// 					},
/// 				},
/// 			},
/// 			Engine:     "aurora-postgresql",
/// 			Version:    pulumi.StringRef("10.14"),
/// 			IncludeAll: pulumi.BoolRef(true),
/// 		}, nil)
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
/// data "aws_rds_getengineversion" "test" {
///   filters {
///     name   = "engine-mode"
///     values = ["serverless"]
///   }
///   engine      = "aurora-postgresql"
///   version     = "10.14"
///   include_all = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetEngineVersionArgs;
/// import com.pulumi.aws.rds.inputs.GetEngineVersionFilterArgs;
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
///         final var test = RdsFunctions.getEngineVersion(GetEngineVersionArgs.builder()
///             .filters(GetEngineVersionFilterArgs.builder()
///                 .name("engine-mode")
///                 .values("serverless")
///                 .build())
///             .engine("aurora-postgresql")
///             .version("10.14")
///             .includeAll(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:rds:getEngineVersion
///       arguments:
///         filters:
///           - name: engine-mode
///             values:
///               - serverless
///         engine: aurora-postgresql
///         version: '10.14'
///         includeAll: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_engine_version_get_engine_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEngineVersionResult> getEngineVersion(
  GetEngineVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getEngineVersion:getEngineVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionResult.fromMap(result);
}

pulumi.Output<GetEngineVersionResult> getEngineVersionOutput(
  GetEngineVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getEngineVersion:getEngineVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEngineVersionResult.fromMap);
}

/// ## Example Usage
///
/// List the event categories of all the RDS resources.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const example = await aws.rds.getEventCategories({});
///     return {
///         example: example.eventCategories,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_event_categories()
/// pulumi.export("example", example.event_categories)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Rds.GetEventCategories.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["example"] = example.Apply(getEventCategoriesResult => getEventCategoriesResult.EventCategories),
///     };
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
/// 		example, err := rds.GetEventCategories(ctx, &rds.GetEventCategoriesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example", example.EventCategories)
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
/// data "aws_rds_geteventcategories" "example" {
/// }
///
/// output "example" {
///   value = data.aws_rds_geteventcategories.example.event_categories
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetEventCategoriesArgs;
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
///         final var example = RdsFunctions.getEventCategories(GetEventCategoriesArgs.builder()
///             .build());
///
///         ctx.export("example", example.eventCategories());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:rds:getEventCategories
///       arguments: {}
/// outputs:
///   example: ${example.eventCategories}
/// ```
///
///
/// List the event categories specific to the RDS resource `db-snapshot`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const example = await aws.rds.getEventCategories({
///         sourceType: "db-snapshot",
///     });
///     return {
///         example: example.eventCategories,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_event_categories(source_type="db-snapshot")
/// pulumi.export("example", example.event_categories)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Rds.GetEventCategories.Invoke(new()
///     {
///         SourceType = "db-snapshot",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["example"] = example.Apply(getEventCategoriesResult => getEventCategoriesResult.EventCategories),
///     };
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
/// 		example, err := rds.GetEventCategories(ctx, &rds.GetEventCategoriesArgs{
/// 			SourceType: pulumi.StringRef("db-snapshot"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example", example.EventCategories)
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
/// data "aws_rds_geteventcategories" "example" {
///   source_type = "db-snapshot"
/// }
///
/// output "example" {
///   value = data.aws_rds_geteventcategories.example.event_categories
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetEventCategoriesArgs;
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
///         final var example = RdsFunctions.getEventCategories(GetEventCategoriesArgs.builder()
///             .sourceType("db-snapshot")
///             .build());
///
///         ctx.export("example", example.eventCategories());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:rds:getEventCategories
///       arguments:
///         sourceType: db-snapshot
/// outputs:
///   example: ${example.eventCategories}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_event_categories_get_event_categories_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventCategoriesResult> getEventCategories(
  GetEventCategoriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getEventCategories:getEventCategories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventCategoriesResult.fromMap(result);
}

pulumi.Output<GetEventCategoriesResult> getEventCategoriesOutput(
  GetEventCategoriesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getEventCategories:getEventCategories',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventCategoriesResult.fromMap);
}

/// Data source for managing an AWS RDS (Relational Database) Global Cluster.
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
/// const example = aws.rds.getGlobalCluster({
///     identifier: test.globalClusterIdentifier,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_global_cluster(identifier=test["globalClusterIdentifier"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Rds.GetGlobalCluster.Invoke(new()
///     {
///         Identifier = test.GlobalClusterIdentifier,
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
/// 		_, err := rds.LookupGlobalCluster(ctx, &rds.LookupGlobalClusterArgs{
/// 			Identifier: test.GlobalClusterIdentifier,
/// 		}, nil)
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
/// data "aws_rds_getglobalcluster" "example" {
///   identifier = test.globalClusterIdentifier
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetGlobalClusterArgs;
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
///         final var example = RdsFunctions.getGlobalCluster(GetGlobalClusterArgs.builder()
///             .identifier(test.globalClusterIdentifier())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:rds:getGlobalCluster
///       arguments:
///         identifier: ${test.globalClusterIdentifier}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_global_cluster_get_global_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalClusterResult> getGlobalCluster(
  GetGlobalClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getGlobalCluster:getGlobalCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalClusterResult.fromMap(result);
}

pulumi.Output<GetGlobalClusterResult> getGlobalClusterOutput(
  GetGlobalClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getGlobalCluster:getGlobalCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGlobalClusterResult.fromMap);
}

/// Use this data source to get information about an RDS instance
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const database = aws.rds.getInstance({
///     dbInstanceIdentifier: "my-test-database",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// database = aws.rds.get_instance(db_instance_identifier="my-test-database")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = Aws.Rds.GetInstance.Invoke(new()
///     {
///         DbInstanceIdentifier = "my-test-database",
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
/// 		_, err := rds.LookupInstance(ctx, &rds.LookupInstanceArgs{
/// 			DbInstanceIdentifier: pulumi.StringRef("my-test-database"),
/// 		}, nil)
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
/// data "aws_rds_getinstance" "database" {
///   db_instance_identifier = "my-test-database"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetInstanceArgs;
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
///         final var database = RdsFunctions.getInstance(GetInstanceArgs.builder()
///             .dbInstanceIdentifier("my-test-database")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   database:
///     fn::invoke:
///       function: aws:rds:getInstance
///       arguments:
///         dbInstanceIdentifier: my-test-database
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_instance_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

pulumi.Output<GetInstanceResult> getInstanceOutput(
  GetInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getInstance:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
}

/// Data source for listing RDS Database Instances.
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
/// const example = aws.rds.getInstances({
///     filters: [{
///         name: "db-instance-id",
///         values: ["my-database-id"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_instances(filters=[{
///     "name": "db-instance-id",
///     "values": ["my-database-id"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Rds.GetInstances.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Rds.Inputs.GetInstancesFilterInputArgs
///             {
///                 Name = "db-instance-id",
///                 Values = new[]
///                 {
///                     "my-database-id",
///                 },
///             },
///         },
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
/// 		_, err := rds.GetInstances(ctx, &rds.GetInstancesArgs{
/// 			Filters: []rds.GetInstancesFilter{
/// 				{
/// 					Name: "db-instance-id",
/// 					Values: []string{
/// 						"my-database-id",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_rds_getinstances" "example" {
///   filters {
///     name   = "db-instance-id"
///     values = ["my-database-id"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetInstancesArgs;
/// import com.pulumi.aws.rds.inputs.GetInstancesFilterArgs;
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
///         final var example = RdsFunctions.getInstances(GetInstancesArgs.builder()
///             .filters(GetInstancesFilterArgs.builder()
///                 .name("db-instance-id")
///                 .values("my-database-id")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:rds:getInstances
///       arguments:
///         filters:
///           - name: db-instance-id
///             values:
///               - my-database-id
/// ```
///
///
/// ### Using tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.rds.getInstances({
///     tags: {
///         Env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_instances(tags={
///     "Env": "test",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Rds.GetInstances.Invoke(new()
///     {
///         Tags =
///         {
///             { "Env", "test" },
///         },
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
/// 		_, err := rds.GetInstances(ctx, &rds.GetInstancesArgs{
/// 			Tags: map[string]string{
/// 				"Env": "test",
/// 			},
/// 		}, nil)
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
/// data "aws_rds_getinstances" "example" {
///   tags = {
///     "Env" = "test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetInstancesArgs;
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
///         final var example = RdsFunctions.getInstances(GetInstancesArgs.builder()
///             .tags(Map.of("Env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:rds:getInstances
///       arguments:
///         tags:
///           Env: test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

pulumi.Output<GetInstancesResult> getInstancesOutput(
  GetInstancesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getInstances:getInstances',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstancesResult.fromMap);
}

/// Information about RDS orderable DB instances and valid parameter combinations.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.rds.getOrderableDbInstance({
///     engine: "mysql",
///     engineVersion: "5.7.22",
///     licenseModel: "general-public-license",
///     storageType: "standard",
///     preferredInstanceClasses: [
///         "db.r6.xlarge",
///         "db.m4.large",
///         "db.t3.small",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_orderable_db_instance(engine="mysql",
///     engine_version="5.7.22",
///     license_model="general-public-license",
///     storage_type="standard",
///     preferred_instance_classes=[
///         "db.r6.xlarge",
///         "db.m4.large",
///         "db.t3.small",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Rds.GetOrderableDbInstance.Invoke(new()
///     {
///         Engine = "mysql",
///         EngineVersion = "5.7.22",
///         LicenseModel = "general-public-license",
///         StorageType = "standard",
///         PreferredInstanceClasses = new[]
///         {
///             "db.r6.xlarge",
///             "db.m4.large",
///             "db.t3.small",
///         },
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
/// 		_, err := rds.GetOrderableDbInstance(ctx, &rds.GetOrderableDbInstanceArgs{
/// 			Engine:        "mysql",
/// 			EngineVersion: pulumi.StringRef("5.7.22"),
/// 			LicenseModel:  pulumi.StringRef("general-public-license"),
/// 			StorageType:   pulumi.StringRef("standard"),
/// 			PreferredInstanceClasses: []string{
/// 				"db.r6.xlarge",
/// 				"db.m4.large",
/// 				"db.t3.small",
/// 			},
/// 		}, nil)
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
/// data "aws_rds_getorderabledbinstance" "test" {
///   engine                     = "mysql"
///   engine_version             = "5.7.22"
///   license_model              = "general-public-license"
///   storage_type               = "standard"
///   preferred_instance_classes = ["db.r6.xlarge", "db.m4.large", "db.t3.small"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetOrderableDbInstanceArgs;
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
///         final var test = RdsFunctions.getOrderableDbInstance(GetOrderableDbInstanceArgs.builder()
///             .engine("mysql")
///             .engineVersion("5.7.22")
///             .licenseModel("general-public-license")
///             .storageType("standard")
///             .preferredInstanceClasses(
///                 "db.r6.xlarge",
///                 "db.m4.large",
///                 "db.t3.small")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:rds:getOrderableDbInstance
///       arguments:
///         engine: mysql
///         engineVersion: 5.7.22
///         licenseModel: general-public-license
///         storageType: standard
///         preferredInstanceClasses:
///           - db.r6.xlarge
///           - db.m4.large
///           - db.t3.small
/// ```
///
///
/// Valid parameter combinations can also be found with `preferredEngineVersions` and/or `preferredInstanceClasses`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.rds.getOrderableDbInstance({
///     engine: "mysql",
///     licenseModel: "general-public-license",
///     preferredEngineVersions: [
///         "5.6.35",
///         "5.6.41",
///         "5.6.44",
///     ],
///     preferredInstanceClasses: [
///         "db.t2.small",
///         "db.t3.medium",
///         "db.t3.large",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_orderable_db_instance(engine="mysql",
///     license_model="general-public-license",
///     preferred_engine_versions=[
///         "5.6.35",
///         "5.6.41",
///         "5.6.44",
///     ],
///     preferred_instance_classes=[
///         "db.t2.small",
///         "db.t3.medium",
///         "db.t3.large",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Rds.GetOrderableDbInstance.Invoke(new()
///     {
///         Engine = "mysql",
///         LicenseModel = "general-public-license",
///         PreferredEngineVersions = new[]
///         {
///             "5.6.35",
///             "5.6.41",
///             "5.6.44",
///         },
///         PreferredInstanceClasses = new[]
///         {
///             "db.t2.small",
///             "db.t3.medium",
///             "db.t3.large",
///         },
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
/// 		_, err := rds.GetOrderableDbInstance(ctx, &rds.GetOrderableDbInstanceArgs{
/// 			Engine:       "mysql",
/// 			LicenseModel: pulumi.StringRef("general-public-license"),
/// 			PreferredEngineVersions: []string{
/// 				"5.6.35",
/// 				"5.6.41",
/// 				"5.6.44",
/// 			},
/// 			PreferredInstanceClasses: []string{
/// 				"db.t2.small",
/// 				"db.t3.medium",
/// 				"db.t3.large",
/// 			},
/// 		}, nil)
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
/// data "aws_rds_getorderabledbinstance" "test" {
///   engine                     = "mysql"
///   license_model              = "general-public-license"
///   preferred_engine_versions  = ["5.6.35", "5.6.41", "5.6.44"]
///   preferred_instance_classes = ["db.t2.small", "db.t3.medium", "db.t3.large"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetOrderableDbInstanceArgs;
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
///         final var test = RdsFunctions.getOrderableDbInstance(GetOrderableDbInstanceArgs.builder()
///             .engine("mysql")
///             .licenseModel("general-public-license")
///             .preferredEngineVersions(
///                 "5.6.35",
///                 "5.6.41",
///                 "5.6.44")
///             .preferredInstanceClasses(
///                 "db.t2.small",
///                 "db.t3.medium",
///                 "db.t3.large")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:rds:getOrderableDbInstance
///       arguments:
///         engine: mysql
///         licenseModel: general-public-license
///         preferredEngineVersions:
///           - 5.6.35
///           - 5.6.41
///           - 5.6.44
///         preferredInstanceClasses:
///           - db.t2.small
///           - db.t3.medium
///           - db.t3.large
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_orderable_db_instance_get_orderable_db_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrderableDbInstanceResult> getOrderableDbInstance(
  GetOrderableDbInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getOrderableDbInstance:getOrderableDbInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrderableDbInstanceResult.fromMap(result);
}

pulumi.Output<GetOrderableDbInstanceResult> getOrderableDbInstanceOutput(
  GetOrderableDbInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getOrderableDbInstance:getOrderableDbInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrderableDbInstanceResult.fromMap);
}

/// Information about a database parameter group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.rds.getParameterGroup({
///     name: "default.postgres15",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_parameter_group(name="default.postgres15")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Rds.GetParameterGroup.Invoke(new()
///     {
///         Name = "default.postgres15",
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
/// 		_, err := rds.LookupParameterGroup(ctx, &rds.LookupParameterGroupArgs{
/// 			Name: "default.postgres15",
/// 		}, nil)
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
/// data "aws_rds_getparametergroup" "test" {
///   name = "default.postgres15"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetParameterGroupArgs;
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
///         final var test = RdsFunctions.getParameterGroup(GetParameterGroupArgs.builder()
///             .name("default.postgres15")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:rds:getParameterGroup
///       arguments:
///         name: default.postgres15
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_parameter_group_get_parameter_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetParameterGroupResult> getParameterGroup(
  GetParameterGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getParameterGroup:getParameterGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParameterGroupResult.fromMap(result);
}

pulumi.Output<GetParameterGroupResult> getParameterGroupOutput(
  GetParameterGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getParameterGroup:getParameterGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetParameterGroupResult.fromMap);
}

/// Use this data source to get information about a DB Proxy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const proxy = aws.rds.getProxy({
///     name: "my-test-db-proxy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// proxy = aws.rds.get_proxy(name="my-test-db-proxy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var proxy = Aws.Rds.GetProxy.Invoke(new()
///     {
///         Name = "my-test-db-proxy",
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
/// 		_, err := rds.LookupProxy(ctx, &rds.LookupProxyArgs{
/// 			Name: "my-test-db-proxy",
/// 		}, nil)
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
/// data "aws_rds_getproxy" "proxy" {
///   name = "my-test-db-proxy"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetProxyArgs;
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
///         final var proxy = RdsFunctions.getProxy(GetProxyArgs.builder()
///             .name("my-test-db-proxy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   proxy:
///     fn::invoke:
///       function: aws:rds:getProxy
///       arguments:
///         name: my-test-db-proxy
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_proxy_get_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProxyResult> getProxy(
  GetProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getProxy:getProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProxyResult.fromMap(result);
}

pulumi.Output<GetProxyResult> getProxyOutput(
  GetProxyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getProxy:getProxy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProxyResult.fromMap);
}

/// Information about a single RDS Reserved Instance Offering.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.rds.getReservedInstanceOffering({
///     dbInstanceClass: "db.t2.micro",
///     duration: 31536000,
///     multiAz: false,
///     offeringType: "All Upfront",
///     productDescription: "mysql",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_reserved_instance_offering(db_instance_class="db.t2.micro",
///     duration=31536000,
///     multi_az=False,
///     offering_type="All Upfront",
///     product_description="mysql")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Rds.GetReservedInstanceOffering.Invoke(new()
///     {
///         DbInstanceClass = "db.t2.micro",
///         Duration = 31536000,
///         MultiAz = false,
///         OfferingType = "All Upfront",
///         ProductDescription = "mysql",
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
/// 		_, err := rds.GetReservedInstanceOffering(ctx, &rds.GetReservedInstanceOfferingArgs{
/// 			DbInstanceClass:    "db.t2.micro",
/// 			Duration:           31536000,
/// 			MultiAz:            false,
/// 			OfferingType:       "All Upfront",
/// 			ProductDescription: "mysql",
/// 		}, nil)
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
/// data "aws_rds_getreservedinstanceoffering" "test" {
///   db_instance_class   = "db.t2.micro"
///   duration            = 31536000
///   multi_az            = false
///   offering_type       = "All Upfront"
///   product_description = "mysql"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetReservedInstanceOfferingArgs;
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
///         final var test = RdsFunctions.getReservedInstanceOffering(GetReservedInstanceOfferingArgs.builder()
///             .dbInstanceClass("db.t2.micro")
///             .duration(31536000)
///             .multiAz(false)
///             .offeringType("All Upfront")
///             .productDescription("mysql")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:rds:getReservedInstanceOffering
///       arguments:
///         dbInstanceClass: db.t2.micro
///         duration: 3.1536e+07
///         multiAz: false
///         offeringType: All Upfront
///         productDescription: mysql
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_reserved_instance_offering_get_reserved_instance_offering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservedInstanceOfferingResult> getReservedInstanceOffering(
  GetReservedInstanceOfferingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getReservedInstanceOffering:getReservedInstanceOffering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservedInstanceOfferingResult.fromMap(result);
}

pulumi.Output<GetReservedInstanceOfferingResult> getReservedInstanceOfferingOutput(
  GetReservedInstanceOfferingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getReservedInstanceOffering:getReservedInstanceOffering',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReservedInstanceOfferingResult.fromMap);
}

/// Use this data source to get information about a DB Snapshot for use when provisioning DB instances
///
/// &gt; **NOTE:** This data source does not apply to snapshots created on Aurora DB clusters.
/// See the `aws.rds.ClusterSnapshot` data source for DB Cluster snapshots.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const prod = new aws.rds.Instance("prod", {
///     allocatedStorage: 10,
///     engine: "mysql",
///     engineVersion: "5.6.17",
///     instanceClass: aws.rds.InstanceType.T2_Micro,
///     dbName: "mydb",
///     username: "foo",
///     password: "bar",
///     dbSubnetGroupName: "my_database_subnet_group",
///     parameterGroupName: "default.mysql5.6",
/// });
/// const latestProdSnapshot = aws.rds.getSnapshotOutput({
///     dbInstanceIdentifier: prod.identifier,
///     mostRecent: true,
/// });
/// // Use the latest production snapshot to create a dev instance.
/// const dev = new aws.rds.Instance("dev", {
///     instanceClass: aws.rds.InstanceType.T2_Micro,
///     dbName: "mydbdev",
///     snapshotIdentifier: latestProdSnapshot.id,
/// }, {
///     ignoreChanges: ["snapshotIdentifier"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// prod = aws.rds.Instance("prod",
///     allocated_storage=10,
///     engine="mysql",
///     engine_version="5.6.17",
///     instance_class=aws.rds.InstanceType.T2_MICRO,
///     db_name="mydb",
///     username="foo",
///     password="bar",
///     db_subnet_group_name="my_database_subnet_group",
///     parameter_group_name="default.mysql5.6")
/// latest_prod_snapshot = aws.rds.get_snapshot_output(db_instance_identifier=prod.identifier,
///     most_recent=True)
/// # Use the latest production snapshot to create a dev instance.
/// dev = aws.rds.Instance("dev",
///     instance_class=aws.rds.InstanceType.T2_MICRO,
///     db_name="mydbdev",
///     snapshot_identifier=latest_prod_snapshot.id,
///     opts = pulumi.ResourceOptions(ignore_changes=["snapshotIdentifier"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prod = new Aws.Rds.Instance("prod", new()
///     {
///         AllocatedStorage = 10,
///         Engine = "mysql",
///         EngineVersion = "5.6.17",
///         InstanceClass = Aws.Rds.InstanceType.T2_Micro,
///         DbName = "mydb",
///         Username = "foo",
///         Password = "bar",
///         DbSubnetGroupName = "my_database_subnet_group",
///         ParameterGroupName = "default.mysql5.6",
///     });
///
///     var latestProdSnapshot = Aws.Rds.GetSnapshot.Invoke(new()
///     {
///         DbInstanceIdentifier = prod.Identifier,
///         MostRecent = true,
///     });
///
///     // Use the latest production snapshot to create a dev instance.
///     var dev = new Aws.Rds.Instance("dev", new()
///     {
///         InstanceClass = Aws.Rds.InstanceType.T2_Micro,
///         DbName = "mydbdev",
///         SnapshotIdentifier = latestProdSnapshot.Apply(getSnapshotResult => getSnapshotResult.Id),
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "snapshotIdentifier",
///         },
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
/// 		prod, err := rds.NewInstance(ctx, "prod", &rds.InstanceArgs{
/// 			AllocatedStorage:   pulumi.Int(10),
/// 			Engine:             pulumi.String("mysql"),
/// 			EngineVersion:      pulumi.String("5.6.17"),
/// 			InstanceClass:      pulumi.String(rds.InstanceType_T2_Micro),
/// 			DbName:             pulumi.String("mydb"),
/// 			Username:           pulumi.String("foo"),
/// 			Password:           pulumi.String("bar"),
/// 			DbSubnetGroupName:  pulumi.String("my_database_subnet_group"),
/// 			ParameterGroupName: pulumi.String("default.mysql5.6"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		latestProdSnapshot := rds.LookupSnapshotOutput(ctx, rds.GetSnapshotOutputArgs{
/// 			DbInstanceIdentifier: prod.Identifier,
/// 			MostRecent:           pulumi.Bool(true),
/// 		}, nil)
/// 		// Use the latest production snapshot to create a dev instance.
/// 		_, err = rds.NewInstance(ctx, "dev", &rds.InstanceArgs{
/// 			InstanceClass:      pulumi.String(rds.InstanceType_T2_Micro),
/// 			DbName:             pulumi.String("mydbdev"),
/// 			SnapshotIdentifier: latestProdSnapshot.Id(),
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"snapshotIdentifier",
/// 		}))
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
/// data "aws_rds_getsnapshot" "latestProdSnapshot" {
///   db_instance_identifier = aws_rds_instance.prod.identifier
///   most_recent            = true
/// }
///
/// resource "aws_rds_instance" "prod" {
///   allocated_storage    = 10
///   engine               = "mysql"
///   engine_version       = "5.6.17"
///   instance_class       = "db.t2.micro"
///   db_name              = "mydb"
///   username             = "foo"
///   password             = "bar"
///   db_subnet_group_name = "my_database_subnet_group"
///   parameter_group_name = "default.mysql5.6"
/// }
/// # Use the latest production snapshot to create a dev instance.
/// resource "aws_rds_instance" "dev" {
///   lifecycle {
///     ignore_changes = [snapshotIdentifier]
///   }
///   instance_class      = "db.t2.micro"
///   db_name             = "mydbdev"
///   snapshot_identifier = data.aws_rds_getsnapshot.latestProdSnapshot.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.Instance;
/// import com.pulumi.aws.rds.InstanceArgs;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetSnapshotArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var prod = new Instance("prod", InstanceArgs.builder()
///             .allocatedStorage(10)
///             .engine("mysql")
///             .engineVersion("5.6.17")
///             .instanceClass("db.t2.micro")
///             .dbName("mydb")
///             .username("foo")
///             .password("bar")
///             .dbSubnetGroupName("my_database_subnet_group")
///             .parameterGroupName("default.mysql5.6")
///             .build());
///
///         final var latestProdSnapshot = RdsFunctions.getSnapshot(GetSnapshotArgs.builder()
///             .dbInstanceIdentifier(prod.identifier())
///             .mostRecent(true)
///             .build());
///
///         // Use the latest production snapshot to create a dev instance.
///         var dev = new Instance("dev", InstanceArgs.builder()
///             .instanceClass("db.t2.micro")
///             .dbName("mydbdev")
///             .snapshotIdentifier(latestProdSnapshot.applyValue(_latestProdSnapshot -> _latestProdSnapshot.id()))
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("snapshotIdentifier")
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   prod:
///     type: aws:rds:Instance
///     properties:
///       allocatedStorage: 10
///       engine: mysql
///       engineVersion: 5.6.17
///       instanceClass: db.t2.micro
///       dbName: mydb
///       username: foo
///       password: bar
///       dbSubnetGroupName: my_database_subnet_group
///       parameterGroupName: default.mysql5.6
///   # Use the latest production snapshot to create a dev instance.
///   dev:
///     type: aws:rds:Instance
///     properties:
///       instanceClass: db.t2.micro
///       dbName: mydbdev
///       snapshotIdentifier: ${latestProdSnapshot.id}
///     options:
///       ignoreChanges:
///         - snapshotIdentifier
/// variables:
///   latestProdSnapshot:
///     fn::invoke:
///       function: aws:rds:getSnapshot
///       arguments:
///         dbInstanceIdentifier: ${prod.identifier}
///         mostRecent: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_snapshot_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getSnapshot:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

pulumi.Output<GetSnapshotResult> getSnapshotOutput(
  GetSnapshotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getSnapshot:getSnapshot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSnapshotResult.fromMap);
}

/// Provides details about an AWS RDS (Relational Database) Snapshots.
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
/// const example = aws.rds.getSnapshots({
///     dbInstanceIdentifier: "my-db-instance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_snapshots(db_instance_identifier="my-db-instance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Rds.GetSnapshots.Invoke(new()
///     {
///         DbInstanceIdentifier = "my-db-instance",
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
/// 		_, err := rds.GetSnapshots(ctx, &rds.GetSnapshotsArgs{
/// 			DbInstanceIdentifier: pulumi.StringRef("my-db-instance"),
/// 		}, nil)
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
/// data "aws_rds_getsnapshots" "example" {
///   db_instance_identifier = "my-db-instance"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetSnapshotsArgs;
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
///         final var example = RdsFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .dbInstanceIdentifier("my-db-instance")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:rds:getSnapshots
///       arguments:
///         dbInstanceIdentifier: my-db-instance
/// ```
///
///
/// ### Filter by Snapshot ID
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.rds.getSnapshots({
///     filters: [{
///         name: "db-snapshot-id",
///         values: ["my-snapshot-id"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_snapshots(filters=[{
///     "name": "db-snapshot-id",
///     "values": ["my-snapshot-id"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Rds.GetSnapshots.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Rds.Inputs.GetSnapshotsFilterInputArgs
///             {
///                 Name = "db-snapshot-id",
///                 Values = new[]
///                 {
///                     "my-snapshot-id",
///                 },
///             },
///         },
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
/// 		_, err := rds.GetSnapshots(ctx, &rds.GetSnapshotsArgs{
/// 			Filters: []rds.GetSnapshotsFilter{
/// 				{
/// 					Name: "db-snapshot-id",
/// 					Values: []string{
/// 						"my-snapshot-id",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_rds_getsnapshots" "example" {
///   filters {
///     name   = "db-snapshot-id"
///     values = ["my-snapshot-id"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetSnapshotsArgs;
/// import com.pulumi.aws.rds.inputs.GetSnapshotsFilterArgs;
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
///         final var example = RdsFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .filters(GetSnapshotsFilterArgs.builder()
///                 .name("db-snapshot-id")
///                 .values("my-snapshot-id")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:rds:getSnapshots
///       arguments:
///         filters:
///           - name: db-snapshot-id
///             values:
///               - my-snapshot-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_snapshots_get_snapshots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotsResult> getSnapshots(
  GetSnapshotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getSnapshots:getSnapshots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotsResult.fromMap(result);
}

pulumi.Output<GetSnapshotsResult> getSnapshotsOutput(
  GetSnapshotsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getSnapshots:getSnapshots',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSnapshotsResult.fromMap);
}

/// Use this data source to get information about an RDS subnet group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const database = aws.rds.getSubnetGroup({
///     name: "my-test-database-subnet-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// database = aws.rds.get_subnet_group(name="my-test-database-subnet-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = Aws.Rds.GetSubnetGroup.Invoke(new()
///     {
///         Name = "my-test-database-subnet-group",
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
/// 		_, err := rds.LookupSubnetGroup(ctx, &rds.LookupSubnetGroupArgs{
/// 			Name: "my-test-database-subnet-group",
/// 		}, nil)
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
/// data "aws_rds_getsubnetgroup" "database" {
///   name = "my-test-database-subnet-group"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetSubnetGroupArgs;
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
///         final var database = RdsFunctions.getSubnetGroup(GetSubnetGroupArgs.builder()
///             .name("my-test-database-subnet-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   database:
///     fn::invoke:
///       function: aws:rds:getSubnetGroup
///       arguments:
///         name: my-test-database-subnet-group
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_subnet_group_get_subnet_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetGroupResult> getSubnetGroup(
  GetSubnetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupResult.fromMap(result);
}

pulumi.Output<GetSubnetGroupResult> getSubnetGroupOutput(
  GetSubnetGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:rds/getSubnetGroup:getSubnetGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubnetGroupResult.fromMap);
}
