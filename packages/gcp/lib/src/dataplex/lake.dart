import 'package:pulumi/pulumi.dart' as pulumi;
import 'lake_args.dart';
import 'lake_asset_status.dart';
import 'lake_metastore.dart';
import 'lake_metastore_status.dart';

/// The Dataplex Lake resource
///
/// ## Example Usage
///
/// ### Basic_lake
/// A basic example of a dataplex lake
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.dataplex.Lake("primary", {
///     location: "us-west1",
///     name: "lake",
///     description: "Lake for DCL",
///     displayName: "Lake for DCL",
///     project: "my-project-name",
///     labels: {
///         "my-lake": "exists",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.dataplex.Lake("primary",
///     location="us-west1",
///     name="lake",
///     description="Lake for DCL",
///     display_name="Lake for DCL",
///     project="my-project-name",
///     labels={
///         "my-lake": "exists",
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
///     var primary = new Gcp.DataPlex.Lake("primary", new()
///     {
///         Location = "us-west1",
///         Name = "lake",
///         Description = "Lake for DCL",
///         DisplayName = "Lake for DCL",
///         Project = "my-project-name",
///         Labels =
///         {
///             { "my-lake", "exists" },
///         },
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
/// 		_, err := dataplex.NewLake(ctx, "primary", &dataplex.LakeArgs{
/// 			Location:    pulumi.String("us-west1"),
/// 			Name:        pulumi.String("lake"),
/// 			Description: pulumi.String("Lake for DCL"),
/// 			DisplayName: pulumi.String("Lake for DCL"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Labels: pulumi.StringMap{
/// 				"my-lake": pulumi.String("exists"),
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
/// import com.pulumi.gcp.dataplex.Lake;
/// import com.pulumi.gcp.dataplex.LakeArgs;
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
///         var primary = new Lake("primary", LakeArgs.builder()
///             .location("us-west1")
///             .name("lake")
///             .description("Lake for DCL")
///             .displayName("Lake for DCL")
///             .project("my-project-name")
///             .labels(Map.of("my-lake", "exists"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:dataplex:Lake
///     properties:
///       location: us-west1
///       name: lake
///       description: Lake for DCL
///       displayName: Lake for DCL
///       project: my-project-name
///       labels:
///         my-lake: exists
/// ```
///
///
/// ## Import
///
/// Lake can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/lakes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Lake can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/lake:Lake default projects/{{project}}/locations/{{location}}/lakes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/lake:Lake default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/lake:Lake default {{location}}/{{name}}
/// ```
class Lake extends pulumi.CustomResource {
  /// Output only. Aggregated status of the underlying assets of the lake.
  late final pulumi.Output<List<LakeAssetStatus>> assetStatuses;

  /// Output only. The time when the lake was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the lake.
  late final pulumi.Output<String?> description;

  /// Optional. User friendly display name.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. User-defined labels for the lake.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Optional. Settings to manage lake and Dataproc Metastore service instance association.
  late final pulumi.Output<LakeMetastore?> metastore;

  /// Output only. Metastore status of the lake.
  late final pulumi.Output<List<LakeMetastoreStatus>> metastoreStatuses;

  /// The name of the lake.
  ///
  ///
  ///
  /// - - -
  late final pulumi.Output<String> name;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. Service account associated with this lake. This service account must be authorized to access or operate on resources managed by the lake.
  late final pulumi.Output<String> serviceAccount;

  /// Output only. Current state of the lake. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  late final pulumi.Output<String> state;

  /// Output only. System generated globally unique ID for the lake. This ID will be different if the lake is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// Output only. The time when the lake was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Lake].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Lake]. {@macro pulumi_dataplex_lake_lake_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Lake(String name, {LakeArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:dataplex/lake:Lake',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.assetStatuses = registerOutput<List<LakeAssetStatus>>('assetStatuses');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.metastore = registerOutput<LakeMetastore?>('metastore');
    this.metastoreStatuses = registerOutput<List<LakeMetastoreStatus>>(
      'metastoreStatuses',
    );
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
