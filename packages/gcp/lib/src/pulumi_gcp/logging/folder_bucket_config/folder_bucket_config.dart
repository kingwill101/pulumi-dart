import 'package:pulumi/pulumi.dart' as pulumi;
import '../folder_bucket_config_cmek_settings/folder_bucket_config_cmek_settings.dart';
import '../folder_bucket_config_index_config/folder_bucket_config_index_config.dart';
import 'folder_bucket_config_args.dart';

/// Manages a folder-level logging bucket config. For more information see
/// [the official logging documentation](https://cloud.google.com/logging/docs/) and
/// [Storing Logs](https://cloud.google.com/logging/docs/storage).
///
/// > **Note:** Logging buckets are automatically created for a given folder, project, organization, billingAccount and cannot be deleted. Creating a resource of this type will acquire and update the resource that already exists at the desired location. These buckets cannot be removed so deleting this resource will remove the bucket config from your state but will leave the logging bucket unchanged. The buckets that are currently automatically created are "_Default" and "_Required".
///
/// ## Example Usage
///
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
