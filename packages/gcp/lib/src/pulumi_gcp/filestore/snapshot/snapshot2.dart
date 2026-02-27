import 'package:pulumi/pulumi.dart';
import 'snapshot_args2.dart';

/// A Google Cloud Filestore snapshot.
///
///
/// To get more information about Snapshot, see:
///
/// * [API documentation](https://cloud.google.com/filestore/docs/reference/rest/v1/projects.locations.instances.snapshots)
/// * How-to Guides
/// * [Creating Snapshots](https://cloud.google.com/filestore/docs/create-snapshots)
/// * [Official Documentation](https://cloud.google.com/filestore/docs/snapshots)
///
/// ## Example Usage
///
/// ### Filestore Snapshot Basic
///
///
///
/// ### Filestore Snapshot Full
///
///
///
///
/// ## Import
///
/// Snapshot can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/snapshots/{{name}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{name}}`
///
/// * `{{location}}/{{instance}}/{{name}}`
///
/// When using the `pulumi import` command, Snapshot can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:filestore/snapshot:Snapshot default projects/{{project}}/locations/{{location}}/instances/{{instance}}/snapshots/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:filestore/snapshot:Snapshot default {{project}}/{{location}}/{{instance}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:filestore/snapshot:Snapshot default {{location}}/{{instance}}/{{name}}
/// ```
class Snapshot2 extends CustomResource {
  /// The time when the snapshot was created in RFC3339 text format.
  late final Output<String> createTime;

  /// A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The amount of bytes needed to allocate a full copy of the snapshot content.
  late final Output<String> filesystemUsedBytes;

  /// The resource name of the filestore instance.
  late final Output<String> instance;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  late final Output<String> location;

  /// The resource name of the snapshot. The name must be unique within the specified instance.
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

  /// The snapshot state.
  late final Output<String> state;

  Snapshot2(
    String name, {
    SnapshotArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:filestore/snapshot:Snapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.filesystemUsedBytes = registerOutput<String>('filesystemUsedBytes');
    this.instance = registerOutput<String>('instance');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
  }
}
