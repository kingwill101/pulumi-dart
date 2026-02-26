import 'package:pulumi/pulumi.dart';
import '../gcpolicy_max_age/gcpolicy_max_age.dart';
import '../gcpolicy_max_version/gcpolicy_max_version.dart';
import 'gcpolicy_args.dart';

/// Creates a Google Cloud Bigtable GC Policy inside a family. For more information see
/// [the official documentation](https://cloud.google.com/bigtable/) and
/// [API](https://cloud.google.com/bigtable/docs/go/reference).
///
/// > **Warning**: We don't recommend having multiple GC policies for the same column
/// family as it may result in unexpected behavior.
///
/// > **Note**: GC policies associated with a replicated table cannot be destroyed directly.
/// Destroying a GC policy is translated into never perform garbage collection, this is
/// considered relaxing from pure age-based or version-based GC policy, hence not allowed.
/// The workaround is unreplicating the instance first by updating the instance to have one
/// cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.bigtable.Instance("instance", {
/// name: "tf-instance",
/// clusters: [{
/// clusterId: "tf-instance-cluster",
/// numNodes: 3,
/// storageType: "HDD",
/// }],
/// });
/// const table = new gcp.bigtable.Table("table", {
/// name: "tf-table",
/// instanceName: instance.name,
/// columnFamilies: [{
/// family: "name",
/// }],
/// });
/// const policy = new gcp.bigtable.GCPolicy("policy", {
/// instanceName: instance.name,
/// table: table.name,
/// columnFamily: "name",
/// deletionPolicy: "ABANDON",
/// gcRules: `  {
/// \\"rules\\": [
/// {
/// \\"max_age\\": \\"168h\\"
/// }
/// ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.bigtable.Instance("instance",
/// name="tf-instance",
/// clusters=[{
/// "cluster_id": "tf-instance-cluster",
/// "num_nodes": 3,
/// "storage_type": "HDD",
/// }])
/// table = gcp.bigtable.Table("table",
/// name="tf-table",
/// instance_name=instance.name,
/// column_families=[{
/// "family": "name",
/// }])
/// policy = gcp.bigtable.GCPolicy("policy",
/// instance_name=instance.name,
/// table=table.name,
/// column_family="name",
/// deletion_policy="ABANDON",
/// gc_rules="""  {
/// \"rules\": [
/// {
/// \"max_age\": \"168h\"
/// }
/// ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var instance = new Gcp.BigTable.Instance("instance", new()
/// {
/// Name = "tf-instance",
/// Clusters = new[]
/// {
/// new Gcp.BigTable.Inputs.InstanceClusterArgs
/// {
/// ClusterId = "tf-instance-cluster",
/// NumNodes = 3,
/// StorageType = "HDD",
/// },
/// },
/// });
///
/// var table = new Gcp.BigTable.Table("table", new()
/// {
/// Name = "tf-table",
/// InstanceName = instance.Name,
/// ColumnFamilies = new[]
/// {
/// new Gcp.BigTable.Inputs.TableColumnFamilyArgs
/// {
/// Family = "name",
/// },
/// },
/// });
///
/// var policy = new Gcp.BigTable.GCPolicy("policy", new()
/// {
/// InstanceName = instance.Name,
/// Table = table.Name,
/// ColumnFamily = "name",
/// DeletionPolicy = "ABANDON",
/// GcRules = @"  {
/// \""rules\"": [
/// {
/// \""max_age\"": \""168h\""
/// }
/// ]
/// }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// instance, err := bigtable.NewInstance(ctx, "instance", &bigtable.InstanceArgs{
/// Name: pulumi.String("tf-instance"),
/// Clusters: bigtable.InstanceClusterArray{
/// &bigtable.InstanceClusterArgs{
/// ClusterId:   pulumi.String("tf-instance-cluster"),
/// NumNodes:    pulumi.Int(3),
/// StorageType: pulumi.String("HDD"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// table, err := bigtable.NewTable(ctx, "table", &bigtable.TableArgs{
/// Name:         pulumi.String("tf-table"),
/// InstanceName: instance.Name,
/// ColumnFamilies: bigtable.TableColumnFamilyArray{
/// &bigtable.TableColumnFamilyArgs{
/// Family: pulumi.String("name"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigtable.NewGCPolicy(ctx, "policy", &bigtable.GCPolicyArgs{
/// InstanceName:   instance.Name,
/// Table:          table.Name,
/// ColumnFamily:   pulumi.String("name"),
/// DeletionPolicy: pulumi.String("ABANDON"),
/// GcRules: pulumi.String(`  {
/// \"rules\": [
/// {
/// \"max_age\": \"168h\"
/// }
/// ]
/// }
/// `),
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
/// import com.pulumi.gcp.bigtable.Instance;
/// import com.pulumi.gcp.bigtable.InstanceArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterArgs;
/// import com.pulumi.gcp.bigtable.Table;
/// import com.pulumi.gcp.bigtable.TableArgs;
/// import com.pulumi.gcp.bigtable.inputs.TableColumnFamilyArgs;
/// import com.pulumi.gcp.bigtable.GCPolicy;
/// import com.pulumi.gcp.bigtable.GCPolicyArgs;
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
/// var instance = new Instance("instance", InstanceArgs.builder()
/// .name("tf-instance")
/// .clusters(InstanceClusterArgs.builder()
/// .clusterId("tf-instance-cluster")
/// .numNodes(3)
/// .storageType("HDD")
/// .build())
/// .build());
///
/// var table = new Table("table", TableArgs.builder()
/// .name("tf-table")
/// .instanceName(instance.name())
/// .columnFamilies(TableColumnFamilyArgs.builder()
/// .family("name")
/// .build())
/// .build());
///
/// var policy = new GCPolicy("policy", GCPolicyArgs.builder()
/// .instanceName(instance.name())
/// .table(table.name())
/// .columnFamily("name")
/// .deletionPolicy("ABANDON")
/// .gcRules("""
/// {
/// \"rules\": [
/// {
/// \"max_age\": \"168h\"
/// }
/// ]
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:bigtable:Instance
/// properties:
/// name: tf-instance
/// clusters:
/// - clusterId: tf-instance-cluster
/// numNodes: 3
/// storageType: HDD
/// table:
/// type: gcp:bigtable:Table
/// properties:
/// name: tf-table
/// instanceName: ${instance.name}
/// columnFamilies:
/// - family: name
/// policy:
/// type: gcp:bigtable:GCPolicy
/// properties:
/// instanceName: ${instance.name}
/// table: ${table.name}
/// columnFamily: name
/// deletionPolicy: ABANDON
/// gcRules: |2
/// {
/// \"rules\": [
/// {
/// \"max_age\": \"168h\"
/// }
/// ]
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Multiple conditions is also supported. `UNION` when any of its sub-policies apply (OR). `INTERSECTION` when all its sub-policies apply (AND)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.bigtable.GCPolicy("policy", {
/// instanceName: instance.name,
/// table: table.name,
/// columnFamily: "name",
/// deletionPolicy: "ABANDON",
/// gcRules: `  {
/// \\"mode\\": \\"union\\",
/// \\"rules\\": [
/// {
/// \\"max_age\\": \\"168h\\"
/// },
/// {
/// \\"max_version\\": 10
/// }
/// ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigtable.GCPolicy("policy",
/// instance_name=instance["name"],
/// table=table["name"],
/// column_family="name",
/// deletion_policy="ABANDON",
/// gc_rules="""  {
/// \"mode\": \"union\",
/// \"rules\": [
/// {
/// \"max_age\": \"168h\"
/// },
/// {
/// \"max_version\": 10
/// }
/// ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = new Gcp.BigTable.GCPolicy("policy", new()
/// {
/// InstanceName = instance.Name,
/// Table = table.Name,
/// ColumnFamily = "name",
/// DeletionPolicy = "ABANDON",
/// GcRules = @"  {
/// \""mode\"": \""union\"",
/// \""rules\"": [
/// {
/// \""max_age\"": \""168h\""
/// },
/// {
/// \""max_version\"": 10
/// }
/// ]
/// }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigtable.NewGCPolicy(ctx, "policy", &bigtable.GCPolicyArgs{
/// InstanceName:   pulumi.Any(instance.Name),
/// Table:          pulumi.Any(table.Name),
/// ColumnFamily:   pulumi.String("name"),
/// DeletionPolicy: pulumi.String("ABANDON"),
/// GcRules: pulumi.String(`  {
/// \"mode\": \"union\",
/// \"rules\": [
/// {
/// \"max_age\": \"168h\"
/// },
/// {
/// \"max_version\": 10
/// }
/// ]
/// }
/// `),
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
/// import com.pulumi.gcp.bigtable.GCPolicy;
/// import com.pulumi.gcp.bigtable.GCPolicyArgs;
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
/// var policy = new GCPolicy("policy", GCPolicyArgs.builder()
/// .instanceName(instance.name())
/// .table(table.name())
/// .columnFamily("name")
/// .deletionPolicy("ABANDON")
/// .gcRules("""
/// {
/// \"mode\": \"union\",
/// \"rules\": [
/// {
/// \"max_age\": \"168h\"
/// },
/// {
/// \"max_version\": 10
/// }
/// ]
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:bigtable:GCPolicy
/// properties:
/// instanceName: ${instance.name}
/// table: ${table.name}
/// columnFamily: name
/// deletionPolicy: ABANDON
/// gcRules: |2
/// {
/// \"mode\": \"union\",
/// \"rules\": [
/// {
/// \"max_age\": \"168h\"
/// },
/// {
/// \"max_version\": 10
/// }
/// ]
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// An example of more complex GC policy:
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.bigtable.Instance("instance", {
/// name: "instance_name",
/// clusters: [{
/// clusterId: "cid",
/// zone: "us-central1-b",
/// }],
/// instanceType: "DEVELOPMENT",
/// deletionProtection: false,
/// });
/// const table = new gcp.bigtable.Table("table", {
/// name: "your-table",
/// instanceName: instance.id,
/// columnFamilies: [{
/// family: "cf1",
/// }],
/// });
/// const policy = new gcp.bigtable.GCPolicy("policy", {
/// instanceName: instance.id,
/// table: table.name,
/// columnFamily: "cf1",
/// deletionPolicy: "ABANDON",
/// gcRules: `  {
/// \\"mode\\": \\"union\\",
/// \\"rules\\": [
/// {
/// \\"max_age\\": \\"10h\\"
/// },
/// {
/// \\"mode\\": \\"intersection\\",
/// \\"rules\\": [
/// {
/// \\"max_age\\": \\"2h\\"
/// },
/// {
/// \\"max_version\\": 2
/// }
/// ]
/// }
/// ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.bigtable.Instance("instance",
/// name="instance_name",
/// clusters=[{
/// "cluster_id": "cid",
/// "zone": "us-central1-b",
/// }],
/// instance_type="DEVELOPMENT",
/// deletion_protection=False)
/// table = gcp.bigtable.Table("table",
/// name="your-table",
/// instance_name=instance.id,
/// column_families=[{
/// "family": "cf1",
/// }])
/// policy = gcp.bigtable.GCPolicy("policy",
/// instance_name=instance.id,
/// table=table.name,
/// column_family="cf1",
/// deletion_policy="ABANDON",
/// gc_rules="""  {
/// \"mode\": \"union\",
/// \"rules\": [
/// {
/// \"max_age\": \"10h\"
/// },
/// {
/// \"mode\": \"intersection\",
/// \"rules\": [
/// {
/// \"max_age\": \"2h\"
/// },
/// {
/// \"max_version\": 2
/// }
/// ]
/// }
/// ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var instance = new Gcp.BigTable.Instance("instance", new()
/// {
/// Name = "instance_name",
/// Clusters = new[]
/// {
/// new Gcp.BigTable.Inputs.InstanceClusterArgs
/// {
/// ClusterId = "cid",
/// Zone = "us-central1-b",
/// },
/// },
/// InstanceType = "DEVELOPMENT",
/// DeletionProtection = false,
/// });
///
/// var table = new Gcp.BigTable.Table("table", new()
/// {
/// Name = "your-table",
/// InstanceName = instance.Id,
/// ColumnFamilies = new[]
/// {
/// new Gcp.BigTable.Inputs.TableColumnFamilyArgs
/// {
/// Family = "cf1",
/// },
/// },
/// });
///
/// var policy = new Gcp.BigTable.GCPolicy("policy", new()
/// {
/// InstanceName = instance.Id,
/// Table = table.Name,
/// ColumnFamily = "cf1",
/// DeletionPolicy = "ABANDON",
/// GcRules = @"  {
/// \""mode\"": \""union\"",
/// \""rules\"": [
/// {
/// \""max_age\"": \""10h\""
/// },
/// {
/// \""mode\"": \""intersection\"",
/// \""rules\"": [
/// {
/// \""max_age\"": \""2h\""
/// },
/// {
/// \""max_version\"": 2
/// }
/// ]
/// }
/// ]
/// }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// instance, err := bigtable.NewInstance(ctx, "instance", &bigtable.InstanceArgs{
/// Name: pulumi.String("instance_name"),
/// Clusters: bigtable.InstanceClusterArray{
/// &bigtable.InstanceClusterArgs{
/// ClusterId: pulumi.String("cid"),
/// Zone:      pulumi.String("us-central1-b"),
/// },
/// },
/// InstanceType:       pulumi.String("DEVELOPMENT"),
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// table, err := bigtable.NewTable(ctx, "table", &bigtable.TableArgs{
/// Name:         pulumi.String("your-table"),
/// InstanceName: instance.ID(),
/// ColumnFamilies: bigtable.TableColumnFamilyArray{
/// &bigtable.TableColumnFamilyArgs{
/// Family: pulumi.String("cf1"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigtable.NewGCPolicy(ctx, "policy", &bigtable.GCPolicyArgs{
/// InstanceName:   instance.ID(),
/// Table:          table.Name,
/// ColumnFamily:   pulumi.String("cf1"),
/// DeletionPolicy: pulumi.String("ABANDON"),
/// GcRules: pulumi.String(`  {
/// \"mode\": \"union\",
/// \"rules\": [
/// {
/// \"max_age\": \"10h\"
/// },
/// {
/// \"mode\": \"intersection\",
/// \"rules\": [
/// {
/// \"max_age\": \"2h\"
/// },
/// {
/// \"max_version\": 2
/// }
/// ]
/// }
/// ]
/// }
/// `),
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
/// import com.pulumi.gcp.bigtable.Instance;
/// import com.pulumi.gcp.bigtable.InstanceArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterArgs;
/// import com.pulumi.gcp.bigtable.Table;
/// import com.pulumi.gcp.bigtable.TableArgs;
/// import com.pulumi.gcp.bigtable.inputs.TableColumnFamilyArgs;
/// import com.pulumi.gcp.bigtable.GCPolicy;
/// import com.pulumi.gcp.bigtable.GCPolicyArgs;
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
/// var instance = new Instance("instance", InstanceArgs.builder()
/// .name("instance_name")
/// .clusters(InstanceClusterArgs.builder()
/// .clusterId("cid")
/// .zone("us-central1-b")
/// .build())
/// .instanceType("DEVELOPMENT")
/// .deletionProtection(false)
/// .build());
///
/// var table = new Table("table", TableArgs.builder()
/// .name("your-table")
/// .instanceName(instance.id())
/// .columnFamilies(TableColumnFamilyArgs.builder()
/// .family("cf1")
/// .build())
/// .build());
///
/// var policy = new GCPolicy("policy", GCPolicyArgs.builder()
/// .instanceName(instance.id())
/// .table(table.name())
/// .columnFamily("cf1")
/// .deletionPolicy("ABANDON")
/// .gcRules("""
/// {
/// \"mode\": \"union\",
/// \"rules\": [
/// {
/// \"max_age\": \"10h\"
/// },
/// {
/// \"mode\": \"intersection\",
/// \"rules\": [
/// {
/// \"max_age\": \"2h\"
/// },
/// {
/// \"max_version\": 2
/// }
/// ]
/// }
/// ]
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:bigtable:Instance
/// properties:
/// name: instance_name
/// clusters:
/// - clusterId: cid
/// zone: us-central1-b
/// instanceType: DEVELOPMENT
/// deletionProtection: false
/// table:
/// type: gcp:bigtable:Table
/// properties:
/// name: your-table
/// instanceName: ${instance.id}
/// columnFamilies:
/// - family: cf1
/// policy:
/// type: gcp:bigtable:GCPolicy
/// properties:
/// instanceName: ${instance.id}
/// table: ${table.name}
/// columnFamily: cf1
/// deletionPolicy: ABANDON
/// gcRules: |2
/// {
/// \"mode\": \"union\",
/// \"rules\": [
/// {
/// \"max_age\": \"10h\"
/// },
/// {
/// \"mode\": \"intersection\",
/// \"rules\": [
/// {
/// \"max_age\": \"2h\"
/// },
/// {
/// \"max_version\": 2
/// }
/// ]
/// }
/// ]
/// }
/// ```
/// <!--End PulumiCodeChooser -->
/// This is equivalent to running the following <span pulumi-lang-nodejs="`cbt`" pulumi-lang-dotnet="`Cbt`" pulumi-lang-go="`cbt`" pulumi-lang-python="`cbt`" pulumi-lang-yaml="`cbt`" pulumi-lang-java="`cbt`">`cbt`</span> command:
/// ```
/// cbt setgcpolicy your-table cf1 "(maxage=2d and maxversions=2) or maxage=10h"
/// ```
///
/// ## Import
///
/// This resource does not support import.
class GCPolicy extends CustomResource {
  /// The name of the column family.
  late final Output<String> columnFamily;

  /// The deletion policy for the GC policy.
  /// Setting ABANDON allows the resource to be abandoned rather than deleted. This is useful for GC policy as it cannot be deleted in a replicated instance.
  ///
  /// Possible values are: `ABANDON`.
  late final Output<String?> deletionPolicy;

  /// Serialized JSON object to represent a more complex GC policy. Conflicts with <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span>, <span pulumi-lang-nodejs="`maxAge`" pulumi-lang-dotnet="`MaxAge`" pulumi-lang-go="`maxAge`" pulumi-lang-python="`max_age`" pulumi-lang-yaml="`maxAge`" pulumi-lang-java="`maxAge`">`max_age`</span> and <span pulumi-lang-nodejs="`maxVersion`" pulumi-lang-dotnet="`MaxVersion`" pulumi-lang-go="`maxVersion`" pulumi-lang-python="`max_version`" pulumi-lang-yaml="`maxVersion`" pulumi-lang-java="`maxVersion`">`max_version`</span>. Conflicts with <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span>, <span pulumi-lang-nodejs="`maxAge`" pulumi-lang-dotnet="`MaxAge`" pulumi-lang-go="`maxAge`" pulumi-lang-python="`max_age`" pulumi-lang-yaml="`maxAge`" pulumi-lang-java="`maxAge`">`max_age`</span> and <span pulumi-lang-nodejs="`maxVersion`" pulumi-lang-dotnet="`MaxVersion`" pulumi-lang-go="`maxVersion`" pulumi-lang-python="`max_version`" pulumi-lang-yaml="`maxVersion`" pulumi-lang-java="`maxVersion`">`max_version`</span>.
  late final Output<String?> gcRules;

  /// Boolean for whether to allow ignoring warnings when updating the gc policy.
  /// Setting this to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> allows relaxing the gc policy for replicated clusters by up to 90 days, but keep in mind this may increase how long clusters are inconsistent. Make sure
  /// you understand the risks listed at https://cloud.google.com/bigtable/docs/garbage-collection#increasing before setting this option.
  ///
  /// -----
  late final Output<bool?> ignoreWarnings;

  /// The name of the Bigtable instance.
  late final Output<String> instanceName;

  /// GC policy that applies to all cells older than the given age.
  late final Output<GCPolicyMaxAge?> maxAge;

  /// GC policy that applies to all versions of a cell except for the most recent.
  late final Output<List<GCPolicyMaxVersion>?> maxVersions;

  /// If multiple policies are set, you should choose between `UNION` OR `INTERSECTION`.
  late final Output<String?> mode;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The name of the table.
  late final Output<String> table;

  GCPolicy(
    String name, {
    GCPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/gCPolicy:GCPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.columnFamily = Output.createUnknown<String>();
    this.deletionPolicy = Output.createUnknown<String?>();
    this.gcRules = Output.createUnknown<String?>();
    this.ignoreWarnings = Output.createUnknown<bool?>();
    this.instanceName = Output.createUnknown<String>();
    this.maxAge = Output.createUnknown<GCPolicyMaxAge?>();
    this.maxVersions = Output.createUnknown<List<GCPolicyMaxVersion>?>();
    this.mode = Output.createUnknown<String?>();
    this.project = Output.createUnknown<String>();
    this.table = Output.createUnknown<String>();
  }
}
