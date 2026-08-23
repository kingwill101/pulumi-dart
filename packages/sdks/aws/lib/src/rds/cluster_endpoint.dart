import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_endpoint_args.dart';
import 'cluster_endpoint_state.dart';

/// Manages an RDS Aurora Cluster Custom Endpoint.
/// You can refer to the [User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.Endpoints.html#Aurora.Endpoints.Cluster).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Cluster("default", {
///     clusterIdentifier: "aurora-cluster-demo",
///     availabilityZones: [
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     databaseName: "mydb",
///     masterUsername: "foo",
///     masterPassword: "bar",
///     backupRetentionPeriod: 5,
///     preferredBackupWindow: "07:00-09:00",
/// });
/// const test1 = new aws.rds.ClusterInstance("test1", {
///     applyImmediately: true,
///     clusterIdentifier: _default.id,
///     identifier: "test1",
///     instanceClass: aws.rds.InstanceType.T2_Small,
///     engine: _default.engine.apply((x) => aws.rds.EngineType[x]),
///     engineVersion: _default.engineVersion,
/// });
/// const test2 = new aws.rds.ClusterInstance("test2", {
///     applyImmediately: true,
///     clusterIdentifier: _default.id,
///     identifier: "test2",
///     instanceClass: aws.rds.InstanceType.T2_Small,
///     engine: _default.engine.apply((x) => aws.rds.EngineType[x]),
///     engineVersion: _default.engineVersion,
/// });
/// const test3 = new aws.rds.ClusterInstance("test3", {
///     applyImmediately: true,
///     clusterIdentifier: _default.id,
///     identifier: "test3",
///     instanceClass: aws.rds.InstanceType.T2_Small,
///     engine: _default.engine.apply((x) => aws.rds.EngineType[x]),
///     engineVersion: _default.engineVersion,
/// });
/// const eligible = new aws.rds.ClusterEndpoint("eligible", {
///     clusterIdentifier: _default.id,
///     clusterEndpointIdentifier: "reader",
///     customEndpointType: "READER",
///     excludedMembers: [
///         test1.id,
///         test2.id,
///     ],
/// });
/// const static = new aws.rds.ClusterEndpoint("static", {
///     clusterIdentifier: _default.id,
///     clusterEndpointIdentifier: "static",
///     customEndpointType: "READER",
///     staticMembers: [
///         test1.id,
///         test3.id,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Cluster("default",
///     cluster_identifier="aurora-cluster-demo",
///     availability_zones=[
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     database_name="mydb",
///     master_username="foo",
///     master_password="bar",
///     backup_retention_period=5,
///     preferred_backup_window="07:00-09:00")
/// test1 = aws.rds.ClusterInstance("test1",
///     apply_immediately=True,
///     cluster_identifier=default.id,
///     identifier="test1",
///     instance_class=aws.rds.InstanceType.T2_SMALL,
///     engine=default.engine.apply(lambda x: aws.rds.EngineType(x)),
///     engine_version=default.engine_version)
/// test2 = aws.rds.ClusterInstance("test2",
///     apply_immediately=True,
///     cluster_identifier=default.id,
///     identifier="test2",
///     instance_class=aws.rds.InstanceType.T2_SMALL,
///     engine=default.engine.apply(lambda x: aws.rds.EngineType(x)),
///     engine_version=default.engine_version)
/// test3 = aws.rds.ClusterInstance("test3",
///     apply_immediately=True,
///     cluster_identifier=default.id,
///     identifier="test3",
///     instance_class=aws.rds.InstanceType.T2_SMALL,
///     engine=default.engine.apply(lambda x: aws.rds.EngineType(x)),
///     engine_version=default.engine_version)
/// eligible = aws.rds.ClusterEndpoint("eligible",
///     cluster_identifier=default.id,
///     cluster_endpoint_identifier="reader",
///     custom_endpoint_type="READER",
///     excluded_members=[
///         test1.id,
///         test2.id,
///     ])
/// static = aws.rds.ClusterEndpoint("static",
///     cluster_identifier=default.id,
///     cluster_endpoint_identifier="static",
///     custom_endpoint_type="READER",
///     static_members=[
///         test1.id,
///         test3.id,
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
///     var @default = new Aws.Rds.Cluster("default", new()
///     {
///         ClusterIdentifier = "aurora-cluster-demo",
///         AvailabilityZones = new[]
///         {
///             "us-west-2a",
///             "us-west-2b",
///             "us-west-2c",
///         },
///         DatabaseName = "mydb",
///         MasterUsername = "foo",
///         MasterPassword = "bar",
///         BackupRetentionPeriod = 5,
///         PreferredBackupWindow = "07:00-09:00",
///     });
///
///     var test1 = new Aws.Rds.ClusterInstance("test1", new()
///     {
///         ApplyImmediately = true,
///         ClusterIdentifier = @default.Id,
///         Identifier = "test1",
///         InstanceClass = Aws.Rds.InstanceType.T2_Small,
///         Engine = @default.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
///         EngineVersion = @default.EngineVersion,
///     });
///
///     var test2 = new Aws.Rds.ClusterInstance("test2", new()
///     {
///         ApplyImmediately = true,
///         ClusterIdentifier = @default.Id,
///         Identifier = "test2",
///         InstanceClass = Aws.Rds.InstanceType.T2_Small,
///         Engine = @default.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
///         EngineVersion = @default.EngineVersion,
///     });
///
///     var test3 = new Aws.Rds.ClusterInstance("test3", new()
///     {
///         ApplyImmediately = true,
///         ClusterIdentifier = @default.Id,
///         Identifier = "test3",
///         InstanceClass = Aws.Rds.InstanceType.T2_Small,
///         Engine = @default.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
///         EngineVersion = @default.EngineVersion,
///     });
///
///     var eligible = new Aws.Rds.ClusterEndpoint("eligible", new()
///     {
///         ClusterIdentifier = @default.Id,
///         ClusterEndpointIdentifier = "reader",
///         CustomEndpointType = "READER",
///         ExcludedMembers = new[]
///         {
///             test1.Id,
///             test2.Id,
///         },
///     });
///
///     var @static = new Aws.Rds.ClusterEndpoint("static", new()
///     {
///         ClusterIdentifier = @default.Id,
///         ClusterEndpointIdentifier = "static",
///         CustomEndpointType = "READER",
///         StaticMembers = new[]
///         {
///             test1.Id,
///             test3.Id,
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
/// 		_default, err := rds.NewCluster(ctx, "default", &rds.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("aurora-cluster-demo"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-west-2a"),
/// 				pulumi.String("us-west-2b"),
/// 				pulumi.String("us-west-2c"),
/// 			},
/// 			DatabaseName:          pulumi.String("mydb"),
/// 			MasterUsername:        pulumi.String("foo"),
/// 			MasterPassword:        pulumi.String("bar"),
/// 			BackupRetentionPeriod: pulumi.Int(5),
/// 			PreferredBackupWindow: pulumi.String("07:00-09:00"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test1, err := rds.NewClusterInstance(ctx, "test1", &rds.ClusterInstanceArgs{
/// 			ApplyImmediately:  pulumi.Bool(true),
/// 			ClusterIdentifier: _default.ID().ToIDOutput().ToStringOutput(),
/// 			Identifier:        pulumi.String("test1"),
/// 			InstanceClass:     pulumi.String(rds.InstanceType_T2_Small),
/// 			Engine:            _default.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// 			EngineVersion:     _default.EngineVersion,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test2, err := rds.NewClusterInstance(ctx, "test2", &rds.ClusterInstanceArgs{
/// 			ApplyImmediately:  pulumi.Bool(true),
/// 			ClusterIdentifier: _default.ID().ToIDOutput().ToStringOutput(),
/// 			Identifier:        pulumi.String("test2"),
/// 			InstanceClass:     pulumi.String(rds.InstanceType_T2_Small),
/// 			Engine:            _default.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// 			EngineVersion:     _default.EngineVersion,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test3, err := rds.NewClusterInstance(ctx, "test3", &rds.ClusterInstanceArgs{
/// 			ApplyImmediately:  pulumi.Bool(true),
/// 			ClusterIdentifier: _default.ID().ToIDOutput().ToStringOutput(),
/// 			Identifier:        pulumi.String("test3"),
/// 			InstanceClass:     pulumi.String(rds.InstanceType_T2_Small),
/// 			Engine:            _default.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// 			EngineVersion:     _default.EngineVersion,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewClusterEndpoint(ctx, "eligible", &rds.ClusterEndpointArgs{
/// 			ClusterIdentifier:         _default.ID().ToIDOutput().ToStringOutput(),
/// 			ClusterEndpointIdentifier: pulumi.String("reader"),
/// 			CustomEndpointType:        pulumi.String("READER"),
/// 			ExcludedMembers: pulumi.StringArray{
/// 				test1.ID().ToIDOutput().ToStringOutput(),
/// 				test2.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewClusterEndpoint(ctx, "static", &rds.ClusterEndpointArgs{
/// 			ClusterIdentifier:         _default.ID().ToIDOutput().ToStringOutput(),
/// 			ClusterEndpointIdentifier: pulumi.String("static"),
/// 			CustomEndpointType:        pulumi.String("READER"),
/// 			StaticMembers: pulumi.StringArray{
/// 				test1.ID().ToIDOutput().ToStringOutput(),
/// 				test3.ID().ToIDOutput().ToStringOutput(),
/// 			},
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
/// resource "aws_rds_cluster" "default" {
///   cluster_identifier      = "aurora-cluster-demo"
///   availability_zones      = ["us-west-2a", "us-west-2b", "us-west-2c"]
///   database_name           = "mydb"
///   master_username         = "foo"
///   master_password         = "bar"
///   backup_retention_period = 5
///   preferred_backup_window = "07:00-09:00"
/// }
/// resource "aws_rds_clusterinstance" "test1" {
///   apply_immediately  = true
///   cluster_identifier = aws_rds_cluster.default.id
///   identifier         = "test1"
///   instance_class     = "db.t2.small"
///   engine             = aws_rds_cluster.default.engine
///   engine_version     = aws_rds_cluster.default.engine_version
/// }
/// resource "aws_rds_clusterinstance" "test2" {
///   apply_immediately  = true
///   cluster_identifier = aws_rds_cluster.default.id
///   identifier         = "test2"
///   instance_class     = "db.t2.small"
///   engine             = aws_rds_cluster.default.engine
///   engine_version     = aws_rds_cluster.default.engine_version
/// }
/// resource "aws_rds_clusterinstance" "test3" {
///   apply_immediately  = true
///   cluster_identifier = aws_rds_cluster.default.id
///   identifier         = "test3"
///   instance_class     = "db.t2.small"
///   engine             = aws_rds_cluster.default.engine
///   engine_version     = aws_rds_cluster.default.engine_version
/// }
/// resource "aws_rds_clusterendpoint" "eligible" {
///   cluster_identifier          = aws_rds_cluster.default.id
///   cluster_endpoint_identifier = "reader"
///   custom_endpoint_type        = "READER"
///   excluded_members            = [aws_rds_clusterinstance.test1.id, aws_rds_clusterinstance.test2.id]
/// }
/// resource "aws_rds_clusterendpoint" "static" {
///   cluster_identifier          = aws_rds_cluster.default.id
///   cluster_endpoint_identifier = "static"
///   custom_endpoint_type        = "READER"
///   static_members              = [aws_rds_clusterinstance.test1.id, aws_rds_clusterinstance.test3.id]
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
/// import com.pulumi.aws.rds.ClusterInstance;
/// import com.pulumi.aws.rds.ClusterInstanceArgs;
/// import com.pulumi.aws.rds.ClusterEndpoint;
/// import com.pulumi.aws.rds.ClusterEndpointArgs;
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
///         var default_ = new Cluster("default", ClusterArgs.builder()
///             .clusterIdentifier("aurora-cluster-demo")
///             .availabilityZones(
///                 "us-west-2a",
///                 "us-west-2b",
///                 "us-west-2c")
///             .databaseName("mydb")
///             .masterUsername("foo")
///             .masterPassword("bar")
///             .backupRetentionPeriod(5)
///             .preferredBackupWindow("07:00-09:00")
///             .build());
///
///         var test1 = new ClusterInstance("test1", ClusterInstanceArgs.builder()
///             .applyImmediately(true)
///             .clusterIdentifier(default_.id())
///             .identifier("test1")
///             .instanceClass("db.t2.small")
///             .engine(default_.engine())
///             .engineVersion(default_.engineVersion())
///             .build());
///
///         var test2 = new ClusterInstance("test2", ClusterInstanceArgs.builder()
///             .applyImmediately(true)
///             .clusterIdentifier(default_.id())
///             .identifier("test2")
///             .instanceClass("db.t2.small")
///             .engine(default_.engine())
///             .engineVersion(default_.engineVersion())
///             .build());
///
///         var test3 = new ClusterInstance("test3", ClusterInstanceArgs.builder()
///             .applyImmediately(true)
///             .clusterIdentifier(default_.id())
///             .identifier("test3")
///             .instanceClass("db.t2.small")
///             .engine(default_.engine())
///             .engineVersion(default_.engineVersion())
///             .build());
///
///         var eligible = new ClusterEndpoint("eligible", ClusterEndpointArgs.builder()
///             .clusterIdentifier(default_.id())
///             .clusterEndpointIdentifier("reader")
///             .customEndpointType("READER")
///             .excludedMembers(
///                 test1.id(),
///                 test2.id())
///             .build());
///
///         var static_ = new ClusterEndpoint("static", ClusterEndpointArgs.builder()
///             .clusterIdentifier(default_.id())
///             .clusterEndpointIdentifier("static")
///             .customEndpointType("READER")
///             .staticMembers(
///                 test1.id(),
///                 test3.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:Cluster
///     properties:
///       clusterIdentifier: aurora-cluster-demo
///       availabilityZones:
///         - us-west-2a
///         - us-west-2b
///         - us-west-2c
///       databaseName: mydb
///       masterUsername: foo
///       masterPassword: bar
///       backupRetentionPeriod: 5
///       preferredBackupWindow: 07:00-09:00
///   test1:
///     type: aws:rds:ClusterInstance
///     properties:
///       applyImmediately: true
///       clusterIdentifier: ${default.id}
///       identifier: test1
///       instanceClass: db.t2.small
///       engine: ${default.engine}
///       engineVersion: ${default.engineVersion}
///   test2:
///     type: aws:rds:ClusterInstance
///     properties:
///       applyImmediately: true
///       clusterIdentifier: ${default.id}
///       identifier: test2
///       instanceClass: db.t2.small
///       engine: ${default.engine}
///       engineVersion: ${default.engineVersion}
///   test3:
///     type: aws:rds:ClusterInstance
///     properties:
///       applyImmediately: true
///       clusterIdentifier: ${default.id}
///       identifier: test3
///       instanceClass: db.t2.small
///       engine: ${default.engine}
///       engineVersion: ${default.engineVersion}
///   eligible:
///     type: aws:rds:ClusterEndpoint
///     properties:
///       clusterIdentifier: ${default.id}
///       clusterEndpointIdentifier: reader
///       customEndpointType: READER
///       excludedMembers:
///         - ${test1.id}
///         - ${test2.id}
///   static:
///     type: aws:rds:ClusterEndpoint
///     properties:
///       clusterIdentifier: ${default.id}
///       clusterEndpointIdentifier: static
///       customEndpointType: READER
///       staticMembers:
///         - ${test1.id}
///         - ${test3.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS Clusters Endpoint using the `clusterEndpointIdentifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterEndpoint:ClusterEndpoint custom_reader aurora-prod-cluster-custom-reader
/// ```
class ClusterEndpoint extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of cluster
  late final pulumi.Output<String> arn;
  /// The identifier to use for the new endpoint. This parameter is stored as a lowercase string.
  late final pulumi.Output<String> clusterEndpointIdentifier;
  /// The cluster identifier.
  late final pulumi.Output<String> clusterIdentifier;
  /// The type of the endpoint. One of: READER , ANY .
  late final pulumi.Output<String> customEndpointType;
  /// A custom endpoint for the Aurora cluster
  late final pulumi.Output<String> endpoint;
  /// List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty. Conflicts with `staticMembers`.
  late final pulumi.Output<List<String>?> excludedMembers;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of DB instance identifiers that are part of the custom endpoint group. Conflicts with `excludedMembers`.
  late final pulumi.Output<List<String>?> staticMembers;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-cluster-endpoint.html).
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ClusterEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterEndpoint]. {@macro pulumi_rds_cluster_endpoint_cluster_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterEndpoint(
    String name, {
    ClusterEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterEndpoint:ClusterEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clusterEndpointIdentifier = registerOutput<String>('clusterEndpointIdentifier');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    customEndpointType = registerOutput<String>('customEndpointType');
    endpoint = registerOutput<String>('endpoint');
    excludedMembers = registerOutput<List<String>?>('excludedMembers');
    region = registerOutput<String>('region');
    staticMembers = registerOutput<List<String>?>('staticMembers');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ClusterEndpoint] resource's state with the given [name] and [id].
  static ClusterEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ClusterEndpointState? state,
  }) {
    return ClusterEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClusterEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterEndpoint:ClusterEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clusterEndpointIdentifier = registerOutput<String>('clusterEndpointIdentifier');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    customEndpointType = registerOutput<String>('customEndpointType');
    endpoint = registerOutput<String>('endpoint');
    excludedMembers = registerOutput<List<String>?>('excludedMembers');
    region = registerOutput<String>('region');
    staticMembers = registerOutput<List<String>?>('staticMembers');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
