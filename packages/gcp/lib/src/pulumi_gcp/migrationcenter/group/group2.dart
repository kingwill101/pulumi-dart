import 'package:pulumi/pulumi.dart';
import 'group_args2.dart';

/// A resource that represents an asset group. The purpose of an asset group is to bundle a set of assets that have something in common, while allowing users to add annotations to the group.
///
///
///
/// ## Example Usage
///
/// ### Migration Group Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.migrationcenter.Group("default", {
/// location: "us-central1",
/// groupId: "group-test",
/// description: "Terraform integration test description",
/// displayName: "Terraform integration test display",
/// labels: {
/// key: "value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.migrationcenter.Group("default",
/// location="us-central1",
/// group_id="group-test",
/// description="Terraform integration test description",
/// display_name="Terraform integration test display",
/// labels={
/// "key": "value",
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
/// var @default = new Gcp.MigrationCenter.Group("default", new()
/// {
/// Location = "us-central1",
/// GroupId = "group-test",
/// Description = "Terraform integration test description",
/// DisplayName = "Terraform integration test display",
/// Labels =
/// {
/// { "key", "value" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/migrationcenter"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := migrationcenter.NewGroup(ctx, "default", &migrationcenter.GroupArgs{
/// Location:    pulumi.String("us-central1"),
/// GroupId:     pulumi.String("group-test"),
/// Description: pulumi.String("Terraform integration test description"),
/// DisplayName: pulumi.String("Terraform integration test display"),
/// Labels: pulumi.StringMap{
/// "key": pulumi.String("value"),
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
/// import com.pulumi.gcp.migrationcenter.Group;
/// import com.pulumi.gcp.migrationcenter.GroupArgs;
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
/// var default_ = new Group("default", GroupArgs.builder()
/// .location("us-central1")
/// .groupId("group-test")
/// .description("Terraform integration test description")
/// .displayName("Terraform integration test display")
/// .labels(Map.of("key", "value"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:migrationcenter:Group
/// properties:
/// location: us-central1
/// groupId: group-test
/// description: Terraform integration test description
/// displayName: Terraform integration test display
/// labels:
/// key: value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Group can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/groups/{{group_id}}`
///
/// * `{{project}}/{{location}}/{{group_id}}`
///
/// * `{{location}}/{{group_id}}`
///
/// When using the `pulumi import` command, Group can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/group:Group default projects/{{project}}/locations/{{location}}/groups/{{group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/group:Group default {{project}}/{{location}}/{{group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/group:Group default {{location}}/{{group_id}}
/// ```
class Group2 extends CustomResource {
  /// Output only. The timestamp when the group was created.
  late final Output<String> createTime;

  /// Optional. The description of the group.
  late final Output<String?> description;

  /// Optional. User-friendly display name.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Required. User specified ID for the group. It will become the last component of the group name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `a-z?`.
  late final Output<String> groupId;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the group.
  late final Output<String> location;

  /// Output only. The name of the group.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. The timestamp when the group was last updated.
  late final Output<String> updateTime;

  Group2(
    String name, {
    GroupArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/group:Group',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.groupId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
