import 'package:pulumi/pulumi.dart';
import 'logical_view_args.dart';

/// A logical view object that can be referenced in SQL queries.
///
///
/// To get more information about LogicalView, see:
///
/// * [API documentation](https://cloud.google.com/bigtable/docs/reference/admin/rest/v2/projects.instances.logicalViews)
///
/// ## Example Usage
///
/// ### Bigtable Logical View
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.bigtable.Instance("instance", {
/// name: "bt-instance",
/// clusters: [{
/// clusterId: "cluster-1",
/// zone: "us-east1-b",
/// numNodes: 3,
/// storageType: "HDD",
/// }],
/// deletionProtection: false,
/// });
/// const table = new gcp.bigtable.Table("table", {
/// name: "bt-table",
/// instanceName: instance.name,
/// columnFamilies: [{
/// family: "CF",
/// }],
/// });
/// const logicalView = new gcp.bigtable.LogicalView("logical_view", {
/// logicalViewId: "bt-logical-view",
/// instance: instance.name,
/// deletionProtection: false,
/// query: `SELECT _key, CF
/// FROM \` + \\"\`bt-table\`\\" + \`
/// `,
/// }, {
/// dependsOn: [table],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.bigtable.Instance("instance",
/// name="bt-instance",
/// clusters=[{
/// "cluster_id": "cluster-1",
/// "zone": "us-east1-b",
/// "num_nodes": 3,
/// "storage_type": "HDD",
/// }],
/// deletion_protection=False)
/// table = gcp.bigtable.Table("table",
/// name="bt-table",
/// instance_name=instance.name,
/// column_families=[{
/// "family": "CF",
/// }])
/// logical_view = gcp.bigtable.LogicalView("logical_view",
/// logical_view_id="bt-logical-view",
/// instance=instance.name,
/// deletion_protection=False,
/// query="""SELECT _key, CF
/// FROM ` + \"`bt-table`\" + `
/// """,
/// opts = pulumi.ResourceOptions(depends_on=[table]))
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
/// Name = "bt-instance",
/// Clusters = new[]
/// {
/// new Gcp.BigTable.Inputs.InstanceClusterArgs
/// {
/// ClusterId = "cluster-1",
/// Zone = "us-east1-b",
/// NumNodes = 3,
/// StorageType = "HDD",
/// },
/// },
/// DeletionProtection = false,
/// });
///
/// var table = new Gcp.BigTable.Table("table", new()
/// {
/// Name = "bt-table",
/// InstanceName = instance.Name,
/// ColumnFamilies = new[]
/// {
/// new Gcp.BigTable.Inputs.TableColumnFamilyArgs
/// {
/// Family = "CF",
/// },
/// },
/// });
///
/// var logicalView = new Gcp.BigTable.LogicalView("logical_view", new()
/// {
/// LogicalViewId = "bt-logical-view",
/// Instance = instance.Name,
/// DeletionProtection = false,
/// Query = @"SELECT _key, CF
/// FROM ` + \""`bt-table`\"" + `
/// ",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// table,
/// },
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
/// Name: pulumi.String("bt-instance"),
/// Clusters: bigtable.InstanceClusterArray{
/// &bigtable.InstanceClusterArgs{
/// ClusterId:   pulumi.String("cluster-1"),
/// Zone:        pulumi.String("us-east1-b"),
/// NumNodes:    pulumi.Int(3),
/// StorageType: pulumi.String("HDD"),
/// },
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// table, err := bigtable.NewTable(ctx, "table", &bigtable.TableArgs{
/// Name:         pulumi.String("bt-table"),
/// InstanceName: instance.Name,
/// ColumnFamilies: bigtable.TableColumnFamilyArray{
/// &bigtable.TableColumnFamilyArgs{
/// Family: pulumi.String("CF"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigtable.NewLogicalView(ctx, "logical_view", &bigtable.LogicalViewArgs{
/// LogicalViewId:      pulumi.String("bt-logical-view"),
/// Instance:           instance.Name,
/// DeletionProtection: pulumi.Bool(false),
/// Query:              pulumi.String("SELECT _key, CF\nFROM ` + \\\"`bt-table`\\\" + `\n"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// table,
/// }))
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
/// import com.pulumi.gcp.bigtable.LogicalView;
/// import com.pulumi.gcp.bigtable.LogicalViewArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// .name("bt-instance")
/// .clusters(InstanceClusterArgs.builder()
/// .clusterId("cluster-1")
/// .zone("us-east1-b")
/// .numNodes(3)
/// .storageType("HDD")
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// var table = new Table("table", TableArgs.builder()
/// .name("bt-table")
/// .instanceName(instance.name())
/// .columnFamilies(TableColumnFamilyArgs.builder()
/// .family("CF")
/// .build())
/// .build());
///
/// var logicalView = new LogicalView("logicalView", LogicalViewArgs.builder()
/// .logicalViewId("bt-logical-view")
/// .instance(instance.name())
/// .deletionProtection(false)
/// .query("""
/// SELECT _key, CF
/// FROM ` + \"`bt-table`\" + `
/// """)
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(table)
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
/// name: bt-instance
/// clusters:
/// - clusterId: cluster-1
/// zone: us-east1-b
/// numNodes: 3
/// storageType: HDD
/// deletionProtection: false
/// table:
/// type: gcp:bigtable:Table
/// properties:
/// name: bt-table
/// instanceName: ${instance.name}
/// columnFamilies:
/// - family: CF
/// logicalView:
/// type: gcp:bigtable:LogicalView
/// name: logical_view
/// properties:
/// logicalViewId: bt-logical-view
/// instance: ${instance.name}
/// deletionProtection: false
/// query: |
/// SELECT _key, CF
/// FROM ` + \"`bt-table`\" + `
/// options:
/// dependsOn:
/// - ${table}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// LogicalView can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/logicalViews/{{logical_view_id}}`
///
/// * `{{project}}/{{instance}}/{{logical_view_id}}`
///
/// * `{{instance}}/{{logical_view_id}}`
///
/// When using the `pulumi import` command, LogicalView can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/logicalView:LogicalView default projects/{{project}}/instances/{{instance}}/logicalViews/{{logical_view_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/logicalView:LogicalView default {{project}}/{{instance}}/{{logical_view_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/logicalView:LogicalView default {{instance}}/{{logical_view_id}}
/// ```
class LogicalView extends CustomResource {
  /// Set to true to make the logical view protected against deletion.
  late final Output<bool?> deletionProtection;

  /// The name of the instance to create the logical view within.
  late final Output<String?> instance;

  /// The unique name of the logical view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  late final Output<String> logicalViewId;

  /// The unique name of the requested logical view. Values are of the form `projects/<project>/instances/<instance>/logicalViews/<logicalViewId>`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The logical view's select query.
  late final Output<String> query;

  LogicalView(
    String name, {
    LogicalViewArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/logicalView:LogicalView',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deletionProtection = Output.createUnknown<bool?>();
    this.instance = Output.createUnknown<String?>();
    this.logicalViewId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.query = Output.createUnknown<String>();
  }
}
