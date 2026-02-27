import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_channel_args.dart';

/// A RestoreChannel imposes constraints on where backups can be restored.
/// The RestoreChannel should be in the same project and region
/// as the backups. The backups can only be restored in the
/// destination_project.
///
///
/// To get more information about RestoreChannel, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/projects.locations.restoreChannels)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke)
///
/// ## Example Usage
///
/// ### Gkebackup Restorechannel Basic
///
///
///
///
/// ## Import
///
/// RestoreChannel can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/restoreChannels/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, RestoreChannel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkebackup/restoreChannel:RestoreChannel default projects/{{project}}/locations/{{location}}/restoreChannels/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkebackup/restoreChannel:RestoreChannel default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkebackup/restoreChannel:RestoreChannel default {{location}}/{{name}}
/// ```
class RestoreChannel extends pulumi.CustomResource {
  /// User specified descriptive string for this RestoreChannel.
  late final pulumi.Output<String?> description;

  /// The project where Backups will be restored.
  /// The format is `projects/{project}`.
  /// {project} can be project number or project id.
  late final pulumi.Output<String> destinationProject;

  /// The project_id where Backups will be restored.
  /// Example Project ID: "my-project-id".
  late final pulumi.Output<String> destinationProjectId;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// updates of a restore channel from overwriting each other. It is strongly suggested that
  /// systems make use of the 'etag' in the read-modify-write cycle to perform RestoreChannel updates
  /// in order to avoid race conditions: An etag is returned in the response to restoreChannels.get,
  /// and systems are expected to put that etag in the request to restoreChannels.patch or
  /// restoreChannels.delete to ensure that their change will be applied to the same version of the resource.
  late final pulumi.Output<String> etag;

  /// Description: A set of custom labels supplied by the user.
  /// A list of key->value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The region of the Restore Channel.
  late final pulumi.Output<String> location;

  /// The full name of the RestoreChannel Resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Server generated, unique identifier of UUID format.
  late final pulumi.Output<String> uid;

  RestoreChannel(
    String name, {
    RestoreChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkebackup/restoreChannel:RestoreChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.destinationProject = registerOutput<String>('destinationProject');
    this.destinationProjectId = registerOutput<String>('destinationProjectId');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.uid = registerOutput<String>('uid');
  }
}
