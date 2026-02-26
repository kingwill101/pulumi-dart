import 'package:pulumi/pulumi.dart';
import '../group_auto_accept/group_auto_accept.dart';
import 'group_args4.dart';

/// The NetworkConnectivity Group resource
///
///
/// To get more information about Group, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1beta/projects.locations.global.hubs.groups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/overview)
///
/// ## Example Usage
///
/// ### Network Connectivity Group Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicHub = new gcp.networkconnectivity.Hub("basic_hub", {
/// name: "network-connectivity-hub1",
/// description: "A sample hub",
/// labels: {
/// "label-one": "value-one",
/// },
/// });
/// const primary = new gcp.networkconnectivity.Group("primary", {
/// hub: basicHub.id,
/// name: "default",
/// labels: {
/// "label-one": "value-one",
/// },
/// description: "A sample hub group",
/// autoAccept: {
/// autoAcceptProjects: [
/// "foo",
/// "bar",
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_hub = gcp.networkconnectivity.Hub("basic_hub",
/// name="network-connectivity-hub1",
/// description="A sample hub",
/// labels={
/// "label-one": "value-one",
/// })
/// primary = gcp.networkconnectivity.Group("primary",
/// hub=basic_hub.id,
/// name="default",
/// labels={
/// "label-one": "value-one",
/// },
/// description="A sample hub group",
/// auto_accept={
/// "auto_accept_projects": [
/// "foo",
/// "bar",
/// ],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basicHub = new Gcp.NetworkConnectivity.Hub("basic_hub", new()
/// {
/// Name = "network-connectivity-hub1",
/// Description = "A sample hub",
/// Labels =
/// {
/// { "label-one", "value-one" },
/// },
/// });
///
/// var primary = new Gcp.NetworkConnectivity.Group("primary", new()
/// {
/// Hub = basicHub.Id,
/// Name = "default",
/// Labels =
/// {
/// { "label-one", "value-one" },
/// },
/// Description = "A sample hub group",
/// AutoAccept = new Gcp.NetworkConnectivity.Inputs.GroupAutoAcceptArgs
/// {
/// AutoAcceptProjects = new[]
/// {
/// "foo",
/// "bar",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// basicHub, err := networkconnectivity.NewHub(ctx, "basic_hub", &networkconnectivity.HubArgs{
/// Name:        pulumi.String("network-connectivity-hub1"),
/// Description: pulumi.String("A sample hub"),
/// Labels: pulumi.StringMap{
/// "label-one": pulumi.String("value-one"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkconnectivity.NewGroup(ctx, "primary", &networkconnectivity.GroupArgs{
/// Hub:  basicHub.ID(),
/// Name: pulumi.String("default"),
/// Labels: pulumi.StringMap{
/// "label-one": pulumi.String("value-one"),
/// },
/// Description: pulumi.String("A sample hub group"),
/// AutoAccept: &networkconnectivity.GroupAutoAcceptArgs{
/// AutoAcceptProjects: pulumi.StringArray{
/// pulumi.String("foo"),
/// pulumi.String("bar"),
/// },
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Group;
/// import com.pulumi.gcp.networkconnectivity.GroupArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.GroupAutoAcceptArgs;
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
/// var basicHub = new Hub("basicHub", HubArgs.builder()
/// .name("network-connectivity-hub1")
/// .description("A sample hub")
/// .labels(Map.of("label-one", "value-one"))
/// .build());
///
/// var primary = new Group("primary", GroupArgs.builder()
/// .hub(basicHub.id())
/// .name("default")
/// .labels(Map.of("label-one", "value-one"))
/// .description("A sample hub group")
/// .autoAccept(GroupAutoAcceptArgs.builder()
/// .autoAcceptProjects(
/// "foo",
/// "bar")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basicHub:
/// type: gcp:networkconnectivity:Hub
/// name: basic_hub
/// properties:
/// name: network-connectivity-hub1
/// description: A sample hub
/// labels:
/// label-one: value-one
/// primary:
/// type: gcp:networkconnectivity:Group
/// properties:
/// hub: ${basicHub.id}
/// name: default
/// labels:
/// label-one: value-one
/// description: A sample hub group
/// autoAccept:
/// autoAcceptProjects:
/// - foo
/// - bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Group can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/hubs/{{hub}}/groups/{{name}}`
///
/// * `{{project}}/{{hub}}/{{name}}`
///
/// * `{{hub}}/{{name}}`
///
/// When using the `pulumi import` command, Group can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/group:Group default projects/{{project}}/locations/global/hubs/{{hub}}/groups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/group:Group default {{project}}/{{hub}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/group:Group default {{hub}}/{{name}}
/// ```
class Group4 extends CustomResource {
  /// Optional. The auto-accept setting for this group.
  /// Structure is documented below.
  late final Output<GroupAutoAccept?> autoAccept;

  /// Output only. The time the hub was created.
  late final Output<String> createTime;

  /// An optional description of the group.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The name of the hub. Hub names must be unique. They use the following form: projects/{projectNumber}/locations/global/hubs/{hubId}
  late final Output<String> hub;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name of the group. Group names must be unique.
  /// Possible values are: <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, <span pulumi-lang-nodejs="`center`" pulumi-lang-dotnet="`Center`" pulumi-lang-go="`center`" pulumi-lang-python="`center`" pulumi-lang-yaml="`center`" pulumi-lang-java="`center`">`center`</span>, <span pulumi-lang-nodejs="`edge`" pulumi-lang-dotnet="`Edge`" pulumi-lang-go="`edge`" pulumi-lang-python="`edge`" pulumi-lang-yaml="`edge`" pulumi-lang-java="`edge`">`edge`</span>.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. The name of the route table that corresponds to this group. They use the following form: `projects/{projectNumber}/locations/global/hubs/{hubId}/routeTables/{route_table_id}`
  late final Output<String> routeTable;

  /// Output only. The current lifecycle state of this hub.
  late final Output<String> state;

  /// Output only. The Google-generated UUID for the group. This value is unique across all group resources. If a group is deleted and another with the same name is created, the new route table is assigned a different uniqueId.
  late final Output<String> uid;

  /// Output only. The time the hub was last updated.
  late final Output<String> updateTime;

  Group4(
    String name, {
    GroupArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/group:Group',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoAccept = registerOutput<GroupAutoAccept?>('autoAccept');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.hub = registerOutput<String>('hub');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.routeTable = registerOutput<String>('routeTable');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
