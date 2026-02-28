import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';

/// A resource that represents an asset group. The purpose of an asset group is to bundle a set of assets that have something in common, while allowing users to add annotations to the group.
///
///
///
/// ## Example Usage
///
/// ### Migration Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.migrationcenter.Group("default", {
///     location: "us-central1",
///     groupId: "group-test",
///     description: "Terraform integration test description",
///     displayName: "Terraform integration test display",
///     labels: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.migrationcenter.Group("default",
///     location="us-central1",
///     group_id="group-test",
///     description="Terraform integration test description",
///     display_name="Terraform integration test display",
///     labels={
///         "key": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.MigrationCenter.Group("default", new()
///     {
///         Location = "us-central1",
///         GroupId = "group-test",
///         Description = "Terraform integration test description",
///         DisplayName = "Terraform integration test display",
///         Labels =
///         {
///             { "key", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/migrationcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrationcenter.NewGroup(ctx, "default", &migrationcenter.GroupArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			GroupId:     pulumi.String("group-test"),
/// 			Description: pulumi.String("Terraform integration test description"),
/// 			DisplayName: pulumi.String("Terraform integration test display"),
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new Group("default", GroupArgs.builder()
///             .location("us-central1")
///             .groupId("group-test")
///             .description("Terraform integration test description")
///             .displayName("Terraform integration test display")
///             .labels(Map.of("key", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:migrationcenter:Group
///     properties:
///       location: us-central1
///       groupId: group-test
///       description: Terraform integration test description
///       displayName: Terraform integration test display
///       labels:
///         key: value
/// ```
///
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
class Group extends pulumi.CustomResource {
  /// Output only. The timestamp when the group was created.
  late final pulumi.Output<String> createTime;
  /// Optional. The description of the group.
  late final pulumi.Output<String?> description;
  /// Optional. User-friendly display name.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Required. User specified ID for the group. It will become the last component of the group name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `a-z?`.
  late final pulumi.Output<String> groupId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the group.
  late final pulumi.Output<String> location;
  /// Output only. The name of the group.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Output only. The timestamp when the group was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_migrationcenter_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.groupId = registerOutput<String>('groupId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
