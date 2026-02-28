import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_group_args.dart';

/// An Entry Group represents a logical grouping of one or more Entries.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Entry Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testEntryGroupBasic = new gcp.dataplex.EntryGroup("test_entry_group_basic", {
///     entryGroupId: "entry-group-basic",
///     project: "my-project-name",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_entry_group_basic = gcp.dataplex.EntryGroup("test_entry_group_basic",
///     entry_group_id="entry-group-basic",
///     project="my-project-name",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testEntryGroupBasic = new Gcp.DataPlex.EntryGroup("test_entry_group_basic", new()
///     {
///         EntryGroupId = "entry-group-basic",
///         Project = "my-project-name",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewEntryGroup(ctx, "test_entry_group_basic", &dataplex.EntryGroupArgs{
/// 			EntryGroupId: pulumi.String("entry-group-basic"),
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.dataplex.EntryGroup;
/// import com.pulumi.gcp.dataplex.EntryGroupArgs;
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
///         var testEntryGroupBasic = new EntryGroup("testEntryGroupBasic", EntryGroupArgs.builder()
///             .entryGroupId("entry-group-basic")
///             .project("my-project-name")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testEntryGroupBasic:
///     type: gcp:dataplex:EntryGroup
///     name: test_entry_group_basic
///     properties:
///       entryGroupId: entry-group-basic
///       project: my-project-name
///       location: us-central1
/// ```
///
/// ### Dataplex Entry Group Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testEntryGroupFull = new gcp.dataplex.EntryGroup("test_entry_group_full", {
///     entryGroupId: "entry-group-full",
///     project: "my-project-name",
///     location: "us-central1",
///     labels: {
///         tag: "test-tf",
///     },
///     displayName: "terraform entry group",
///     description: "entry group created by Terraform",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_entry_group_full = gcp.dataplex.EntryGroup("test_entry_group_full",
///     entry_group_id="entry-group-full",
///     project="my-project-name",
///     location="us-central1",
///     labels={
///         "tag": "test-tf",
///     },
///     display_name="terraform entry group",
///     description="entry group created by Terraform")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testEntryGroupFull = new Gcp.DataPlex.EntryGroup("test_entry_group_full", new()
///     {
///         EntryGroupId = "entry-group-full",
///         Project = "my-project-name",
///         Location = "us-central1",
///         Labels =
///         {
///             { "tag", "test-tf" },
///         },
///         DisplayName = "terraform entry group",
///         Description = "entry group created by Terraform",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewEntryGroup(ctx, "test_entry_group_full", &dataplex.EntryGroupArgs{
/// 			EntryGroupId: pulumi.String("entry-group-full"),
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"tag": pulumi.String("test-tf"),
/// 			},
/// 			DisplayName: pulumi.String("terraform entry group"),
/// 			Description: pulumi.String("entry group created by Terraform"),
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
/// import com.pulumi.gcp.dataplex.EntryGroup;
/// import com.pulumi.gcp.dataplex.EntryGroupArgs;
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
///         var testEntryGroupFull = new EntryGroup("testEntryGroupFull", EntryGroupArgs.builder()
///             .entryGroupId("entry-group-full")
///             .project("my-project-name")
///             .location("us-central1")
///             .labels(Map.of("tag", "test-tf"))
///             .displayName("terraform entry group")
///             .description("entry group created by Terraform")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testEntryGroupFull:
///     type: gcp:dataplex:EntryGroup
///     name: test_entry_group_full
///     properties:
///       entryGroupId: entry-group-full
///       project: my-project-name
///       location: us-central1
///       labels:
///         tag: test-tf
///       displayName: terraform entry group
///       description: entry group created by Terraform
/// ```
///
///
/// ## Import
///
/// EntryGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/entryGroups/{{entry_group_id}}`
///
/// * `{{project}}/{{location}}/{{entry_group_id}}`
///
/// * `{{location}}/{{entry_group_id}}`
///
/// When using the `pulumi import` command, EntryGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryGroup:EntryGroup default projects/{{project}}/locations/{{location}}/entryGroups/{{entry_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryGroup:EntryGroup default {{project}}/{{location}}/{{entry_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryGroup:EntryGroup default {{location}}/{{entry_group_id}}
/// ```
class EntryGroup extends pulumi.CustomResource {
  /// The time when the EntryGroup was created.
  late final pulumi.Output<String> createTime;

  /// Description of the EntryGroup.
  late final pulumi.Output<String?> description;

  /// User friendly display name.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The entry group id of the entry group.
  late final pulumi.Output<String?> entryGroupId;

  /// User-defined labels for the EntryGroup.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where entry group will be created in.
  late final pulumi.Output<String?> location;

  /// The relative resource name of the EntryGroup, of the form: projects/{project_number}/locations/{location_id}/entryGroups/{entry_group_id}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Denotes the transfer status of the Entry Group. It is unspecified
  /// for Entry Group created from Dataplex API.
  late final pulumi.Output<String> transferStatus;

  /// System generated globally unique ID for the EntryGroup. This ID will be different if the EntryGroup is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the EntryGroup was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [EntryGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntryGroup]. {@macro pulumi_dataplex_entry_group_entry_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntryGroup(
    String name, {
    EntryGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entryGroup:EntryGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.entryGroupId = registerOutput<String?>('entryGroupId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.transferStatus = registerOutput<String>('transferStatus');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
