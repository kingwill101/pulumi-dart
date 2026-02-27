import 'package:pulumi/pulumi.dart' as pulumi;
import '../entry_type_required_aspect/entry_type_required_aspect.dart';
import 'entry_type_args.dart';

/// An Entry Type is a template for creating Entries.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Entry Type Basic
///
///
///
/// ### Dataplex Entry Type Full
///
///
///
///
/// ## Import
///
/// EntryType can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/entryTypes/{{entry_type_id}}`
///
/// * `{{project}}/{{location}}/{{entry_type_id}}`
///
/// * `{{location}}/{{entry_type_id}}`
///
/// When using the `pulumi import` command, EntryType can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryType:EntryType default projects/{{project}}/locations/{{location}}/entryTypes/{{entry_type_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryType:EntryType default {{project}}/{{location}}/{{entry_type_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryType:EntryType default {{location}}/{{entry_type_id}}
/// ```
class EntryType extends pulumi.CustomResource {
  /// The time when the EntryType was created.
  late final pulumi.Output<String> createTime;

  /// Description of the EntryType.
  late final pulumi.Output<String?> description;

  /// User friendly display name.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The entry type id of the entry type.
  late final pulumi.Output<String?> entryTypeId;

  /// User-defined labels for the EntryType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where entry type will be created in.
  late final pulumi.Output<String?> location;

  /// The relative resource name of the EntryType, of the form: projects/{project_number}/locations/{location_id}/entryTypes/{entry_type_id}
  late final pulumi.Output<String> name;

  /// The platform that Entries of this type belongs to.
  late final pulumi.Output<String?> platform;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// AspectInfo for the entry type.
  /// Structure is documented below.
  late final pulumi.Output<List<EntryTypeRequiredAspect>?> requiredAspects;

  /// The system that Entries of this type belongs to.
  late final pulumi.Output<String?> system;

  /// Indicates the class this Entry Type belongs to, for example, TABLE, DATABASE, MODEL.
  late final pulumi.Output<List<String>?> typeAliases;

  /// System generated globally unique ID for the EntryType. This ID will be different if the EntryType is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the EntryType was last updated.
  late final pulumi.Output<String> updateTime;

  EntryType(
    String name, {
    EntryTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entryType:EntryType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.entryTypeId = registerOutput<String?>('entryTypeId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.platform = registerOutput<String?>('platform');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.requiredAspects =
        registerOutput<List<EntryTypeRequiredAspect>?>('requiredAspects');
    this.system = registerOutput<String?>('system');
    this.typeAliases = registerOutput<List<String>?>('typeAliases');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
