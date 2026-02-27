import 'package:pulumi/pulumi.dart';
import 'backup_args2.dart';

/// A Google Cloud Filestore backup.
///
///
/// To get more information about Backup, see:
///
/// * [API documentation](https://cloud.google.com/filestore/docs/reference/rest/v1/projects.locations.backups)
/// * How-to Guides
/// * [Creating Backups](https://cloud.google.com/filestore/docs/create-backups)
/// * [Official Documentation](https://cloud.google.com/filestore/docs/backups)
///
/// ## Example Usage
///
/// ### Filestore Backup Basic
///
///
///
///
/// ## Import
///
/// Backup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backups/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Backup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:filestore/backup:Backup default projects/{{project}}/locations/{{location}}/backups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:filestore/backup:Backup default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:filestore/backup:Backup default {{location}}/{{name}}
/// ```
class Backup2 extends CustomResource {
  /// The amount of bytes needed to allocate a full copy of the snapshot content.
  late final Output<String> capacityGb;

  /// The time when the snapshot was created in RFC3339 text format.
  late final Output<String> createTime;

  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final Output<String?> description;

  /// Amount of bytes that will be downloaded if the backup is restored.
  late final Output<String> downloadBytes;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// KMS key name used for data encryption.
  late final Output<String> kmsKeyName;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  late final Output<String> location;

  /// The resource name of the backup. The name must be unique within the specified instance.
  /// The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Name of the file share in the source Cloud Filestore instance that the backup is created from.
  late final Output<String> sourceFileShare;

  /// The resource name of the source Cloud Filestore instance, in the format projects/{projectId}/locations/{locationId}/instances/{instanceId}, used to create this backup.
  late final Output<String> sourceInstance;

  /// The service tier of the source Cloud Filestore instance that this backup is created from.
  late final Output<String> sourceInstanceTier;

  /// The backup state.
  late final Output<String> state;

  /// The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.
  late final Output<String> storageBytes;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  /// The field is ignored (both PUT & PATCH) when empty.
  late final Output<Map<String, String>?> tags;

  Backup2(
    String name, {
    BackupArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:filestore/backup:Backup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.capacityGb = registerOutput<String>('capacityGb');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.downloadBytes = registerOutput<String>('downloadBytes');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.sourceFileShare = registerOutput<String>('sourceFileShare');
    this.sourceInstance = registerOutput<String>('sourceInstance');
    this.sourceInstanceTier = registerOutput<String>('sourceInstanceTier');
    this.state = registerOutput<String>('state');
    this.storageBytes = registerOutput<String>('storageBytes');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
