import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';
import 'workspace_settings.dart';

/// A Data Mapper workspace is used to configure Data Mapper access, permissions and data sources for mapping clinical patient data to the FHIR standard.
///
///
/// To get more information about Workspace, see:
///
/// * [API documentation](https://cloud.google.com/healthcare-api/healthcare-data-engine/docs/reference/rest/v1/projects.locations.datasets.dataMapperWorkspaces)
/// * How-to Guides
/// * [Create and manage Data Mapper workspaces ](https://cloud.google.com/healthcare-api/healthcare-data-engine/docs/manage-workspaces)
///
/// ## Example Usage
///
/// ### Healthcare Workspace Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.Dataset("dataset", {
///     name: "example-dataset",
///     location: "us-central1",
/// });
/// const _default = new gcp.healthcare.Workspace("default", {
///     name: "example-dm-workspace",
///     dataset: dataset.id,
///     settings: {
///         dataProjectIds: ["example-data-source-project-id"],
///     },
///     labels: {
///         label1: "labelvalue1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.Dataset("dataset",
///     name="example-dataset",
///     location="us-central1")
/// default = gcp.healthcare.Workspace("default",
///     name="example-dm-workspace",
///     dataset=dataset.id,
///     settings={
///         "data_project_ids": ["example-data-source-project-id"],
///     },
///     labels={
///         "label1": "labelvalue1",
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
///     var dataset = new Gcp.Healthcare.Dataset("dataset", new()
///     {
///         Name = "example-dataset",
///         Location = "us-central1",
///     });
///
///     var @default = new Gcp.Healthcare.Workspace("default", new()
///     {
///         Name = "example-dm-workspace",
///         Dataset = dataset.Id,
///         Settings = new Gcp.Healthcare.Inputs.WorkspaceSettingsArgs
///         {
///             DataProjectIds = new[]
///             {
///                 "example-data-source-project-id",
///             },
///         },
///         Labels =
///         {
///             { "label1", "labelvalue1" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// 			Name:     pulumi.String("example-dataset"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewWorkspace(ctx, "default", &healthcare.WorkspaceArgs{
/// 			Name:    pulumi.String("example-dm-workspace"),
/// 			Dataset: dataset.ID(),
/// 			Settings: &healthcare.WorkspaceSettingsArgs{
/// 				DataProjectIds: pulumi.StringArray{
/// 					pulumi.String("example-data-source-project-id"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label1": pulumi.String("labelvalue1"),
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
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.Workspace;
/// import com.pulumi.gcp.healthcare.WorkspaceArgs;
/// import com.pulumi.gcp.healthcare.inputs.WorkspaceSettingsArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .name("example-dataset")
///             .location("us-central1")
///             .build());
///
///         var default_ = new Workspace("default", WorkspaceArgs.builder()
///             .name("example-dm-workspace")
///             .dataset(dataset.id())
///             .settings(WorkspaceSettingsArgs.builder()
///                 .dataProjectIds("example-data-source-project-id")
///                 .build())
///             .labels(Map.of("label1", "labelvalue1"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:healthcare:Workspace
///     properties:
///       name: example-dm-workspace
///       dataset: ${dataset.id}
///       settings:
///         dataProjectIds:
///           - example-data-source-project-id
///       labels:
///         label1: labelvalue1
///   dataset:
///     type: gcp:healthcare:Dataset
///     properties:
///       name: example-dataset
///       location: us-central1
/// ```
///
///
/// ## Import
///
/// Workspace can be imported using any of these accepted formats:
///
/// * `{{dataset}}/dataMapperWorkspaces/{{name}}`
///
/// When using the `pulumi import` command, Workspace can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/workspace:Workspace default {{dataset}}/dataMapperWorkspaces/{{name}}
/// ```
class Workspace extends pulumi.CustomResource {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  late final pulumi.Output<String> dataset;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The user labels. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The name of the workspace, in the format 'projects/{projectId}/locations/{location}/datasets/{datasetId}/dataMapperWorkspaces/{workspaceId}'
  late final pulumi.Output<String> name;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Settings associated with this workspace.
  /// Structure is documented below.
  late final pulumi.Output<WorkspaceSettings> settings;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_healthcare_workspace_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataset = registerOutput<String>('dataset');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.settings = registerOutput<WorkspaceSettings>('settings');
  }
}
