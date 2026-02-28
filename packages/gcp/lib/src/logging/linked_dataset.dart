import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_dataset_args.dart';
import 'linked_dataset_bigquery_dataset.dart';

/// Describes a BigQuery linked dataset
///
///
/// To get more information about LinkedDataset, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/locations.buckets.links)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/logging/docs/apis)
///
/// ## Example Usage
///
/// ### Logging Linked Dataset Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const loggingLinkedDataset = new gcp.logging.ProjectBucketConfig("logging_linked_dataset", {
///     location: "global",
///     project: "my-project-name",
///     enableAnalytics: true,
///     bucketId: "my-bucket",
/// });
/// const loggingLinkedDatasetLinkedDataset = new gcp.logging.LinkedDataset("logging_linked_dataset", {
///     linkId: "mylink",
///     bucket: loggingLinkedDataset.id,
///     description: "Linked dataset test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// logging_linked_dataset = gcp.logging.ProjectBucketConfig("logging_linked_dataset",
///     location="global",
///     project="my-project-name",
///     enable_analytics=True,
///     bucket_id="my-bucket")
/// logging_linked_dataset_linked_dataset = gcp.logging.LinkedDataset("logging_linked_dataset",
///     link_id="mylink",
///     bucket=logging_linked_dataset.id,
///     description="Linked dataset test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loggingLinkedDataset = new Gcp.Logging.ProjectBucketConfig("logging_linked_dataset", new()
///     {
///         Location = "global",
///         Project = "my-project-name",
///         EnableAnalytics = true,
///         BucketId = "my-bucket",
///     });
///
///     var loggingLinkedDatasetLinkedDataset = new Gcp.Logging.LinkedDataset("logging_linked_dataset", new()
///     {
///         LinkId = "mylink",
///         Bucket = loggingLinkedDataset.Id,
///         Description = "Linked dataset test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		loggingLinkedDataset, err := logging.NewProjectBucketConfig(ctx, "logging_linked_dataset", &logging.ProjectBucketConfigArgs{
/// 			Location:        pulumi.String("global"),
/// 			Project:         pulumi.String("my-project-name"),
/// 			EnableAnalytics: pulumi.Bool(true),
/// 			BucketId:        pulumi.String("my-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewLinkedDataset(ctx, "logging_linked_dataset", &logging.LinkedDatasetArgs{
/// 			LinkId:      pulumi.String("mylink"),
/// 			Bucket:      loggingLinkedDataset.ID(),
/// 			Description: pulumi.String("Linked dataset test"),
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
/// import com.pulumi.gcp.logging.ProjectBucketConfig;
/// import com.pulumi.gcp.logging.ProjectBucketConfigArgs;
/// import com.pulumi.gcp.logging.LinkedDataset;
/// import com.pulumi.gcp.logging.LinkedDatasetArgs;
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
///         var loggingLinkedDataset = new ProjectBucketConfig("loggingLinkedDataset", ProjectBucketConfigArgs.builder()
///             .location("global")
///             .project("my-project-name")
///             .enableAnalytics(true)
///             .bucketId("my-bucket")
///             .build());
///
///         var loggingLinkedDatasetLinkedDataset = new LinkedDataset("loggingLinkedDatasetLinkedDataset", LinkedDatasetArgs.builder()
///             .linkId("mylink")
///             .bucket(loggingLinkedDataset.id())
///             .description("Linked dataset test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   loggingLinkedDataset:
///     type: gcp:logging:ProjectBucketConfig
///     name: logging_linked_dataset
///     properties:
///       location: global
///       project: my-project-name
///       enableAnalytics: true
///       bucketId: my-bucket
///   loggingLinkedDatasetLinkedDataset:
///     type: gcp:logging:LinkedDataset
///     name: logging_linked_dataset
///     properties:
///       linkId: mylink
///       bucket: ${loggingLinkedDataset.id}
///       description: Linked dataset test
/// ```
///
/// ### Logging Linked Dataset All Params
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const loggingLinkedDataset = new gcp.logging.ProjectBucketConfig("logging_linked_dataset", {
///     location: "global",
///     project: "my-project-name",
///     enableAnalytics: true,
///     bucketId: "my-bucket",
/// });
/// const loggingLinkedDatasetLinkedDataset = new gcp.logging.LinkedDataset("logging_linked_dataset", {
///     linkId: "mylink",
///     bucket: "my-bucket",
///     parent: "projects/my-project-name",
///     location: "global",
///     description: "Linked dataset test",
/// }, {
///     dependsOn: [loggingLinkedDataset],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// logging_linked_dataset = gcp.logging.ProjectBucketConfig("logging_linked_dataset",
///     location="global",
///     project="my-project-name",
///     enable_analytics=True,
///     bucket_id="my-bucket")
/// logging_linked_dataset_linked_dataset = gcp.logging.LinkedDataset("logging_linked_dataset",
///     link_id="mylink",
///     bucket="my-bucket",
///     parent="projects/my-project-name",
///     location="global",
///     description="Linked dataset test",
///     opts = pulumi.ResourceOptions(depends_on=[logging_linked_dataset]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loggingLinkedDataset = new Gcp.Logging.ProjectBucketConfig("logging_linked_dataset", new()
///     {
///         Location = "global",
///         Project = "my-project-name",
///         EnableAnalytics = true,
///         BucketId = "my-bucket",
///     });
///
///     var loggingLinkedDatasetLinkedDataset = new Gcp.Logging.LinkedDataset("logging_linked_dataset", new()
///     {
///         LinkId = "mylink",
///         Bucket = "my-bucket",
///         Parent = "projects/my-project-name",
///         Location = "global",
///         Description = "Linked dataset test",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             loggingLinkedDataset,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		loggingLinkedDataset, err := logging.NewProjectBucketConfig(ctx, "logging_linked_dataset", &logging.ProjectBucketConfigArgs{
/// 			Location:        pulumi.String("global"),
/// 			Project:         pulumi.String("my-project-name"),
/// 			EnableAnalytics: pulumi.Bool(true),
/// 			BucketId:        pulumi.String("my-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewLinkedDataset(ctx, "logging_linked_dataset", &logging.LinkedDatasetArgs{
/// 			LinkId:      pulumi.String("mylink"),
/// 			Bucket:      pulumi.String("my-bucket"),
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("Linked dataset test"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			loggingLinkedDataset,
/// 		}))
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
/// import com.pulumi.gcp.logging.ProjectBucketConfig;
/// import com.pulumi.gcp.logging.ProjectBucketConfigArgs;
/// import com.pulumi.gcp.logging.LinkedDataset;
/// import com.pulumi.gcp.logging.LinkedDatasetArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var loggingLinkedDataset = new ProjectBucketConfig("loggingLinkedDataset", ProjectBucketConfigArgs.builder()
///             .location("global")
///             .project("my-project-name")
///             .enableAnalytics(true)
///             .bucketId("my-bucket")
///             .build());
///
///         var loggingLinkedDatasetLinkedDataset = new LinkedDataset("loggingLinkedDatasetLinkedDataset", LinkedDatasetArgs.builder()
///             .linkId("mylink")
///             .bucket("my-bucket")
///             .parent("projects/my-project-name")
///             .location("global")
///             .description("Linked dataset test")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(loggingLinkedDataset)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   loggingLinkedDataset:
///     type: gcp:logging:ProjectBucketConfig
///     name: logging_linked_dataset
///     properties:
///       location: global
///       project: my-project-name
///       enableAnalytics: true
///       bucketId: my-bucket
///   loggingLinkedDatasetLinkedDataset:
///     type: gcp:logging:LinkedDataset
///     name: logging_linked_dataset
///     properties:
///       linkId: mylink
///       bucket: my-bucket
///       parent: projects/my-project-name
///       location: global
///       description: Linked dataset test
///     options:
///       dependsOn:
///         - ${loggingLinkedDataset}
/// ```
///
///
/// ## Import
///
/// LinkedDataset can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/buckets/{{bucket}}/links/{{link_id}}`
///
/// When using the `pulumi import` command, LinkedDataset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/linkedDataset:LinkedDataset default {{parent}}/locations/{{location}}/buckets/{{bucket}}/links/{{link_id}}
/// ```
class LinkedDataset extends pulumi.CustomResource {
  /// The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along
  /// with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery
  /// Views corresponding to the LogViews in the bucket.
  /// Structure is documented below.
  late final pulumi.Output<List<LinkedDatasetBigqueryDataset>> bigqueryDatasets;

  /// The bucket to which the linked dataset is attached.
  late final pulumi.Output<String> bucket;

  /// Output only. The creation timestamp of the link. A timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z"
  /// and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// Describes this link. The maximum length of the description is 8000 characters.
  late final pulumi.Output<String?> description;

  /// Output only. The linked dataset lifecycle state.
  late final pulumi.Output<String> lifecycleState;

  /// The id of the linked dataset.
  late final pulumi.Output<String> linkId;

  /// The location of the linked dataset.
  late final pulumi.Output<String> location;

  /// The resource name of the linked dataset. The name can have up to 100 characters. A valid link id
  /// (at the end of the link name) must only have alphanumeric characters and underscores within it.
  late final pulumi.Output<String> name;

  /// The parent of the linked dataset.
  late final pulumi.Output<String> parent;

  /// Creates a new [LinkedDataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedDataset]. {@macro pulumi_logging_linked_dataset_linked_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedDataset(
    String name, {
    LinkedDatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/linkedDataset:LinkedDataset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigqueryDatasets =
        registerOutput<List<LinkedDatasetBigqueryDataset>>('bigqueryDatasets');
    this.bucket = registerOutput<String>('bucket');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.lifecycleState = registerOutput<String>('lifecycleState');
    this.linkId = registerOutput<String>('linkId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
  }
}
