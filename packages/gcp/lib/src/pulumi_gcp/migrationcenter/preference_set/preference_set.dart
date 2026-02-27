import 'package:pulumi/pulumi.dart';
import '../preference_set_virtual_machine_preferences/preference_set_virtual_machine_preferences.dart';
import 'preference_set_args.dart';

/// Manages the PreferenceSet resource.
///
///
/// To get more information about PreferenceSet, see:
///
/// * [API documentation](https://cloud.google.com/migration-center/docs/reference/rest/v1)
/// * How-to Guides
/// * [Managing Migration Preferences](https://cloud.google.com/migration-center/docs/migration-preferences)
///
/// ## Example Usage
///
/// ### Preference Set Basic
///
///
///
/// ### Preference Set Full
///
///
///
///
/// ## Import
///
/// PreferenceSet can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/preferenceSets/{{preference_set_id}}`
///
/// * `{{project}}/{{location}}/{{preference_set_id}}`
///
/// * `{{location}}/{{preference_set_id}}`
///
/// When using the `pulumi import` command, PreferenceSet can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/preferenceSet:PreferenceSet default projects/{{project}}/locations/{{location}}/preferenceSets/{{preference_set_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/preferenceSet:PreferenceSet default {{project}}/{{location}}/{{preference_set_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/preferenceSet:PreferenceSet default {{location}}/{{preference_set_id}}
/// ```
class PreferenceSet extends CustomResource {
  /// Output only. The timestamp when the preference set was created.
  late final Output<String> createTime;

  /// A description of the preference set.
  late final Output<String?> description;

  /// User-friendly display name. Maximum length is 63 characters.
  late final Output<String?> displayName;

  /// Part of `parent`. See documentation of `projectsId`.
  late final Output<String> location;

  /// Output only. Name of the preference set.
  late final Output<String> name;

  /// Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression `a-z?`.
  late final Output<String> preferenceSetId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Output only. The timestamp when the preference set was last updated.
  late final Output<String> updateTime;

  /// VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
  /// Structure is documented below.
  late final Output<PreferenceSetVirtualMachinePreferences?>
      virtualMachinePreferences;

  PreferenceSet(
    String name, {
    PreferenceSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/preferenceSet:PreferenceSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.preferenceSetId = registerOutput<String>('preferenceSetId');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
    this.virtualMachinePreferences =
        registerOutput<PreferenceSetVirtualMachinePreferences?>(
            'virtualMachinePreferences');
  }
}
