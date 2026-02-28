import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_bucket_config_args.dart';
import 'folder_bucket_config_cmek_settings.dart';
import 'folder_bucket_config_index_config.dart';

/// Manages a folder-level logging bucket config. For more information see
/// [the official logging documentation](https://cloud.google.com/logging/docs/) and
/// [Storing Logs](https://cloud.google.com/logging/docs/storage).
///
/// > **Note:** Logging buckets are automatically created for a given folder, project, organization, billingAccount and cannot be deleted. Creating a resource of this type will acquire and update the resource that already exists at the desired location. These buckets cannot be removed so deleting this resource will remove the bucket config from your state but will leave the logging bucket unchanged. The buckets that are currently automatically created are "_Default" and "_Required".
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.organizations.Folder("default", {
///     displayName: "some-folder-name",
///     parent: "organizations/123456789",
/// });
/// const basic = new gcp.logging.FolderBucketConfig("basic", {
///     folder: _default.name,
///     location: "global",
///     retentionDays: 30,
///     bucketId: "_Default",
///     indexConfigs: [{
///         fieldPath: "jsonPayload.request.status",
///         type: "INDEX_TYPE_STRING",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.organizations.Folder("default",
///     display_name="some-folder-name",
///     parent="organizations/123456789")
/// basic = gcp.logging.FolderBucketConfig("basic",
///     folder=default.name,
///     location="global",
///     retention_days=30,
///     bucket_id="_Default",
///     index_configs=[{
///         "field_path": "jsonPayload.request.status",
///         "type": "INDEX_TYPE_STRING",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Organizations.Folder("default", new()
///     {
///         DisplayName = "some-folder-name",
///         Parent = "organizations/123456789",
///     });
///
///     var basic = new Gcp.Logging.FolderBucketConfig("basic", new()
///     {
///         Folder = @default.Name,
///         Location = "global",
///         RetentionDays = 30,
///         BucketId = "_Default",
///         IndexConfigs = new[]
///         {
///             new Gcp.Logging.Inputs.FolderBucketConfigIndexConfigArgs
///             {
///                 FieldPath = "jsonPayload.request.status",
///                 Type = "INDEX_TYPE_STRING",
///             },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := organizations.NewFolder(ctx, "default", &organizations.FolderArgs{
/// 			DisplayName: pulumi.String("some-folder-name"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewFolderBucketConfig(ctx, "basic", &logging.FolderBucketConfigArgs{
/// 			Folder:        _default.Name,
/// 			Location:      pulumi.String("global"),
/// 			RetentionDays: pulumi.Int(30),
/// 			BucketId:      pulumi.String("_Default"),
/// 			IndexConfigs: logging.FolderBucketConfigIndexConfigArray{
/// 				&logging.FolderBucketConfigIndexConfigArgs{
/// 					FieldPath: pulumi.String("jsonPayload.request.status"),
/// 					Type:      pulumi.String("INDEX_TYPE_STRING"),
/// 				},
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.logging.FolderBucketConfig;
/// import com.pulumi.gcp.logging.FolderBucketConfigArgs;
/// import com.pulumi.gcp.logging.inputs.FolderBucketConfigIndexConfigArgs;
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
///         var default_ = new Folder("default", FolderArgs.builder()
///             .displayName("some-folder-name")
///             .parent("organizations/123456789")
///             .build());
///
///         var basic = new FolderBucketConfig("basic", FolderBucketConfigArgs.builder()
///             .folder(default_.name())
///             .location("global")
///             .retentionDays(30)
///             .bucketId("_Default")
///             .indexConfigs(FolderBucketConfigIndexConfigArgs.builder()
///                 .fieldPath("jsonPayload.request.status")
///                 .type("INDEX_TYPE_STRING")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: some-folder-name
///       parent: organizations/123456789
///   basic:
///     type: gcp:logging:FolderBucketConfig
///     properties:
///       folder: ${default.name}
///       location: global
///       retentionDays: 30
///       bucketId: _Default
///       indexConfigs:
///         - fieldPath: jsonPayload.request.status
///           type: INDEX_TYPE_STRING
/// ```
///
///
/// ## Import
///
/// This resource can be imported using the following format:
///
/// * `folders/{{folder}}/locations/{{location}}/buckets/{{bucket_id}}`
///
/// When using the `pulumi import` command, this resource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/folderBucketConfig:FolderBucketConfig default folders/{{folder}}/locations/{{location}}/buckets/{{bucket_id}}
/// ```
class FolderBucketConfig extends pulumi.CustomResource {
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  late final pulumi.Output<String> bucketId;

  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  late final pulumi.Output<FolderBucketConfigCmekSettings?> cmekSettings;

  /// Describes this bucket.
  late final pulumi.Output<String> description;

  /// The parent resource that contains the logging bucket.
  late final pulumi.Output<String> folder;

  /// A list of indexed fields and related configuration data. Structure is documented below.
  late final pulumi.Output<List<FolderBucketConfigIndexConfig>> indexConfigs;

  /// The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  late final pulumi.Output<String> lifecycleState;

  /// The location of the bucket.
  late final pulumi.Output<String> location;

  /// The resource name of the bucket. For example: "folders/my-folder-id/locations/my-location/buckets/my-bucket-id"
  late final pulumi.Output<String> name;

  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  late final pulumi.Output<int?> retentionDays;

  /// Creates a new [FolderBucketConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderBucketConfig]. {@macro pulumi_logging_folder_bucket_config_folder_bucket_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderBucketConfig(
    String name, {
    FolderBucketConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/folderBucketConfig:FolderBucketConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucketId = registerOutput<String>('bucketId');
    this.cmekSettings =
        registerOutput<FolderBucketConfigCmekSettings?>('cmekSettings');
    this.description = registerOutput<String>('description');
    this.folder = registerOutput<String>('folder');
    this.indexConfigs =
        registerOutput<List<FolderBucketConfigIndexConfig>>('indexConfigs');
    this.lifecycleState = registerOutput<String>('lifecycleState');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.retentionDays = registerOutput<int?>('retentionDays');
  }
}
