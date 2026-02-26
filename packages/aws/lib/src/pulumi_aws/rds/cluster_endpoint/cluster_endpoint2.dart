import 'package:pulumi/pulumi.dart';
import 'cluster_endpoint_args2.dart';

/// Manages an RDS Aurora Cluster Custom Endpoint.
/// You can refer to the [User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.Endpoints.html#Aurora.Endpoints.Cluster).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Cluster("default", {
/// clusterIdentifier: "aurora-cluster-demo",
/// availabilityZones: [
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// databaseName: "mydb",
/// masterUsername: "foo",
/// masterPassword: "bar",
/// backupRetentionPeriod: 5,
/// preferredBackupWindow: "07:00-09:00",
/// });
/// const test1 = new aws.rds.ClusterInstance("test1", {
/// applyImmediately: true,
/// clusterIdentifier: _default.id,
/// identifier: "test1",
/// instanceClass: aws.rds.InstanceType.T2_Small,
/// engine: _default.engine.apply((x) => aws.rds.EngineType[x]),
/// engineVersion: _default.engineVersion,
/// });
/// const test2 = new aws.rds.ClusterInstance("test2", {
/// applyImmediately: true,
/// clusterIdentifier: _default.id,
/// identifier: "test2",
/// instanceClass: aws.rds.InstanceType.T2_Small,
/// engine: _default.engine.apply((x) => aws.rds.EngineType[x]),
/// engineVersion: _default.engineVersion,
/// });
/// const test3 = new aws.rds.ClusterInstance("test3", {
/// applyImmediately: true,
/// clusterIdentifier: _default.id,
/// identifier: "test3",
/// instanceClass: aws.rds.InstanceType.T2_Small,
/// engine: _default.engine.apply((x) => aws.rds.EngineType[x]),
/// engineVersion: _default.engineVersion,
/// });
/// const eligible = new aws.rds.ClusterEndpoint("eligible", {
/// clusterIdentifier: _default.id,
/// clusterEndpointIdentifier: "reader",
/// customEndpointType: "READER",
/// excludedMembers: [
/// test1.id,
/// test2.id,
/// ],
/// });
/// const static = new aws.rds.ClusterEndpoint("static", {
/// clusterIdentifier: _default.id,
/// clusterEndpointIdentifier: "static",
/// customEndpointType: "READER",
/// staticMembers: [
/// test1.id,
/// test3.id,
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Cluster("default",
/// cluster_identifier="aurora-cluster-demo",
/// availability_zones=[
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// database_name="mydb",
/// master_username="foo",
/// master_password="bar",
/// backup_retention_period=5,
/// preferred_backup_window="07:00-09:00")
/// test1 = aws.rds.ClusterInstance("test1",
/// apply_immediately=True,
/// cluster_identifier=default.id,
/// identifier="test1",
/// instance_class=aws.rds.InstanceType.T2_SMALL,
/// engine=default.engine.apply(lambda x: aws.rds.EngineType(x)),
/// engine_version=default.engine_version)
/// test2 = aws.rds.ClusterInstance("test2",
/// apply_immediately=True,
/// cluster_identifier=default.id,
/// identifier="test2",
/// instance_class=aws.rds.InstanceType.T2_SMALL,
/// engine=default.engine.apply(lambda x: aws.rds.EngineType(x)),
/// engine_version=default.engine_version)
/// test3 = aws.rds.ClusterInstance("test3",
/// apply_immediately=True,
/// cluster_identifier=default.id,
/// identifier="test3",
/// instance_class=aws.rds.InstanceType.T2_SMALL,
/// engine=default.engine.apply(lambda x: aws.rds.EngineType(x)),
/// engine_version=default.engine_version)
/// eligible = aws.rds.ClusterEndpoint("eligible",
/// cluster_identifier=default.id,
/// cluster_endpoint_identifier="reader",
/// custom_endpoint_type="READER",
/// excluded_members=[
/// test1.id,
/// test2.id,
/// ])
/// static = aws.rds.ClusterEndpoint("static",
/// cluster_identifier=default.id,
/// cluster_endpoint_identifier="static",
/// custom_endpoint_type="READER",
/// static_members=[
/// test1.id,
/// test3.id,
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Rds.Cluster("default", new()
/// {
/// ClusterIdentifier = "aurora-cluster-demo",
/// AvailabilityZones = new[]
/// {
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// },
/// DatabaseName = "mydb",
/// MasterUsername = "foo",
/// MasterPassword = "bar",
/// BackupRetentionPeriod = 5,
/// PreferredBackupWindow = "07:00-09:00",
/// });
///
/// var test1 = new Aws.Rds.ClusterInstance("test1", new()
/// {
/// ApplyImmediately = true,
/// ClusterIdentifier = @default.Id,
/// Identifier = "test1",
/// InstanceClass = Aws.Rds.InstanceType.T2_Small,
/// Engine = @default.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
/// EngineVersion = @default.EngineVersion,
/// });
///
/// var test2 = new Aws.Rds.ClusterInstance("test2", new()
/// {
/// ApplyImmediately = true,
/// ClusterIdentifier = @default.Id,
/// Identifier = "test2",
/// InstanceClass = Aws.Rds.InstanceType.T2_Small,
/// Engine = @default.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
/// EngineVersion = @default.EngineVersion,
/// });
///
/// var test3 = new Aws.Rds.ClusterInstance("test3", new()
/// {
/// ApplyImmediately = true,
/// ClusterIdentifier = @default.Id,
/// Identifier = "test3",
/// InstanceClass = Aws.Rds.InstanceType.T2_Small,
/// Engine = @default.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
/// EngineVersion = @default.EngineVersion,
/// });
///
/// var eligible = new Aws.Rds.ClusterEndpoint("eligible", new()
/// {
/// ClusterIdentifier = @default.Id,
/// ClusterEndpointIdentifier = "reader",
/// CustomEndpointType = "READER",
/// ExcludedMembers = new[]
/// {
/// test1.Id,
/// test2.Id,
/// },
/// });
///
/// var @static = new Aws.Rds.ClusterEndpoint("static", new()
/// {
/// ClusterIdentifier = @default.Id,
/// ClusterEndpointIdentifier = "static",
/// CustomEndpointType = "READER",
/// StaticMembers = new[]
/// {
/// test1.Id,
/// test3.Id,
/// },
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
/// _default, err := rds.NewCluster(ctx, "default", &rds.ClusterArgs{
/// ClusterIdentifier: pulumi.String("aurora-cluster-demo"),
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-west-2a"),
/// pulumi.String("us-west-2b"),
/// pulumi.String("us-west-2c"),
/// },
/// DatabaseName:          pulumi.String("mydb"),
/// MasterUsername:        pulumi.String("foo"),
/// MasterPassword:        pulumi.String("bar"),
/// BackupRetentionPeriod: pulumi.Int(5),
/// PreferredBackupWindow: pulumi.String("07:00-09:00"),
/// })
/// if err != nil {
/// return err
/// }
/// test1, err := rds.NewClusterInstance(ctx, "test1", &rds.ClusterInstanceArgs{
/// ApplyImmediately:  pulumi.Bool(true),
/// ClusterIdentifier: _default.ID(),
/// Identifier:        pulumi.String("test1"),
/// InstanceClass:     pulumi.String(rds.InstanceType_T2_Small),
/// Engine:            _default.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// EngineVersion:     _default.EngineVersion,
/// })
/// if err != nil {
/// return err
/// }
/// test2, err := rds.NewClusterInstance(ctx, "test2", &rds.ClusterInstanceArgs{
/// ApplyImmediately:  pulumi.Bool(true),
/// ClusterIdentifier: _default.ID(),
/// Identifier:        pulumi.String("test2"),
/// InstanceClass:     pulumi.String(rds.InstanceType_T2_Small),
/// Engine:            _default.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// EngineVersion:     _default.EngineVersion,
/// })
/// if err != nil {
/// return err
/// }
/// test3, err := rds.NewClusterInstance(ctx, "test3", &rds.ClusterInstanceArgs{
/// ApplyImmediately:  pulumi.Bool(true),
/// ClusterIdentifier: _default.ID(),
/// Identifier:        pulumi.String("test3"),
/// InstanceClass:     pulumi.String(rds.InstanceType_T2_Small),
/// Engine:            _default.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// EngineVersion:     _default.EngineVersion,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewClusterEndpoint(ctx, "eligible", &rds.ClusterEndpointArgs{
/// ClusterIdentifier:         _default.ID(),
/// ClusterEndpointIdentifier: pulumi.String("reader"),
/// CustomEndpointType:        pulumi.String("READER"),
/// ExcludedMembers: pulumi.StringArray{
/// test1.ID(),
/// test2.ID(),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewClusterEndpoint(ctx, "static", &rds.ClusterEndpointArgs{
/// ClusterIdentifier:         _default.ID(),
/// ClusterEndpointIdentifier: pulumi.String("static"),
/// CustomEndpointType:        pulumi.String("READER"),
/// StaticMembers: pulumi.StringArray{
/// test1.ID(),
/// test3.ID(),
/// },
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
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
/// import com.pulumi.aws.rds.ClusterInstance;
/// import com.pulumi.aws.rds.ClusterInstanceArgs;
/// import com.pulumi.aws.rds.ClusterEndpoint;
/// import com.pulumi.aws.rds.ClusterEndpointArgs;
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
/// .clusterIdentifier("aurora-cluster-demo")
/// .availabilityZones(
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c")
/// .databaseName("mydb")
/// .masterUsername("foo")
/// .masterPassword("bar")
/// .backupRetentionPeriod(5)
/// .preferredBackupWindow("07:00-09:00")
/// .build());
///
/// var test1 = new ClusterInstance("test1", ClusterInstanceArgs.builder()
/// .applyImmediately(true)
/// .clusterIdentifier(default_.id())
/// .identifier("test1")
/// .instanceClass("db.t2.small")
/// .engine(default_.engine())
/// .engineVersion(default_.engineVersion())
/// .build());
///
/// var test2 = new ClusterInstance("test2", ClusterInstanceArgs.builder()
/// .applyImmediately(true)
/// .clusterIdentifier(default_.id())
/// .identifier("test2")
/// .instanceClass("db.t2.small")
/// .engine(default_.engine())
/// .engineVersion(default_.engineVersion())
/// .build());
///
/// var test3 = new ClusterInstance("test3", ClusterInstanceArgs.builder()
/// .applyImmediately(true)
/// .clusterIdentifier(default_.id())
/// .identifier("test3")
/// .instanceClass("db.t2.small")
/// .engine(default_.engine())
/// .engineVersion(default_.engineVersion())
/// .build());
///
/// var eligible = new ClusterEndpoint("eligible", ClusterEndpointArgs.builder()
/// .clusterIdentifier(default_.id())
/// .clusterEndpointIdentifier("reader")
/// .customEndpointType("READER")
/// .excludedMembers(
/// test1.id(),
/// test2.id())
/// .build());
///
/// var static_ = new ClusterEndpoint("static", ClusterEndpointArgs.builder()
/// .clusterIdentifier(default_.id())
/// .clusterEndpointIdentifier("static")
/// .customEndpointType("READER")
/// .staticMembers(
/// test1.id(),
/// test3.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:rds:Cluster
/// properties:
/// clusterIdentifier: aurora-cluster-demo
/// availabilityZones:
/// - us-west-2a
/// - us-west-2b
/// - us-west-2c
/// databaseName: mydb
/// masterUsername: foo
/// masterPassword: bar
/// backupRetentionPeriod: 5
/// preferredBackupWindow: 07:00-09:00
/// test1:
/// type: aws:rds:ClusterInstance
/// properties:
/// applyImmediately: true
/// clusterIdentifier: ${default.id}
/// identifier: test1
/// instanceClass: db.t2.small
/// engine: ${default.engine}
/// engineVersion: ${default.engineVersion}
/// test2:
/// type: aws:rds:ClusterInstance
/// properties:
/// applyImmediately: true
/// clusterIdentifier: ${default.id}
/// identifier: test2
/// instanceClass: db.t2.small
/// engine: ${default.engine}
/// engineVersion: ${default.engineVersion}
/// test3:
/// type: aws:rds:ClusterInstance
/// properties:
/// applyImmediately: true
/// clusterIdentifier: ${default.id}
/// identifier: test3
/// instanceClass: db.t2.small
/// engine: ${default.engine}
/// engineVersion: ${default.engineVersion}
/// eligible:
/// type: aws:rds:ClusterEndpoint
/// properties:
/// clusterIdentifier: ${default.id}
/// clusterEndpointIdentifier: reader
/// customEndpointType: READER
/// excludedMembers:
/// - ${test1.id}
/// - ${test2.id}
/// static:
/// type: aws:rds:ClusterEndpoint
/// properties:
/// clusterIdentifier: ${default.id}
/// clusterEndpointIdentifier: static
/// customEndpointType: READER
/// staticMembers:
/// - ${test1.id}
/// - ${test3.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import RDS Clusters Endpoint using the <span pulumi-lang-nodejs="`clusterEndpointIdentifier`" pulumi-lang-dotnet="`ClusterEndpointIdentifier`" pulumi-lang-go="`clusterEndpointIdentifier`" pulumi-lang-python="`cluster_endpoint_identifier`" pulumi-lang-yaml="`clusterEndpointIdentifier`" pulumi-lang-java="`clusterEndpointIdentifier`">`cluster_endpoint_identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterEndpoint:ClusterEndpoint custom_reader aurora-prod-cluster-custom-reader
/// ```
///
/// [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.Endpoints.html#Aurora.Endpoints.Cluster
class ClusterEndpoint2 extends CustomResource {
  /// Amazon Resource Name (ARN) of cluster
  late final Output<String> arn;

  /// The identifier to use for the new endpoint. This parameter is stored as a lowercase string.
  late final Output<String> clusterEndpointIdentifier;

  /// The cluster identifier.
  late final Output<String> clusterIdentifier;

  /// The type of the endpoint. One of: READER , ANY .
  late final Output<String> customEndpointType;

  /// A custom endpoint for the Aurora cluster
  late final Output<String> endpoint;

  /// List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty. Conflicts with <span pulumi-lang-nodejs="`staticMembers`" pulumi-lang-dotnet="`StaticMembers`" pulumi-lang-go="`staticMembers`" pulumi-lang-python="`static_members`" pulumi-lang-yaml="`staticMembers`" pulumi-lang-java="`staticMembers`">`static_members`</span>.
  late final Output<List<String>?> excludedMembers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of DB instance identifiers that are part of the custom endpoint group. Conflicts with <span pulumi-lang-nodejs="`excludedMembers`" pulumi-lang-dotnet="`ExcludedMembers`" pulumi-lang-go="`excludedMembers`" pulumi-lang-python="`excluded_members`" pulumi-lang-yaml="`excludedMembers`" pulumi-lang-java="`excludedMembers`">`excluded_members`</span>.
  late final Output<List<String>?> staticMembers;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-cluster-endpoint.html).
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ClusterEndpoint2(
    String name, {
    ClusterEndpointArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterEndpoint:ClusterEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterEndpointIdentifier =
        registerOutput<String>('clusterEndpointIdentifier');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.customEndpointType = registerOutput<String>('customEndpointType');
    this.endpoint = registerOutput<String>('endpoint');
    this.excludedMembers = registerOutput<List<String>?>('excludedMembers');
    this.region = registerOutput<String>('region');
    this.staticMembers = registerOutput<List<String>?>('staticMembers');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
