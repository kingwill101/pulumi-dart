import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_group_dataplex_args.dart';

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
/// ### Dataplex Entry Group Full
///
///
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
class EntryGroupDataplex extends pulumi.CustomResource {
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

  EntryGroupDataplex(
    String name, {
    EntryGroupDataplexArgs? args,
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
