import 'package:pulumi/pulumi.dart' as pulumi;
import '../prevention_stored_info_type_dictionary/prevention_stored_info_type_dictionary.dart';
import '../prevention_stored_info_type_large_custom_dictionary/prevention_stored_info_type_large_custom_dictionary.dart';
import '../prevention_stored_info_type_regex/prevention_stored_info_type_regex.dart';
import 'prevention_stored_info_type_args.dart';

/// Allows creation of custom info types.
///
///
/// To get more information about StoredInfoType, see:
///
/// * [API documentation](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.storedInfoTypes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dlp/docs/creating-stored-infotypes)
///
/// ## Example Usage
///
/// ### Dlp Stored Info Type Basic
///
///
///
/// ### Dlp Stored Info Type Dictionary
///
///
///
/// ### Dlp Stored Info Type Large Custom Dictionary
///
///
///
/// ### Dlp Stored Info Type With Id
///
///
///
///
/// ## Import
///
/// StoredInfoType can be imported using any of these accepted formats:
///
/// * `{{parent}}/storedInfoTypes/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, StoredInfoType can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionStoredInfoType:PreventionStoredInfoType default {{parent}}/storedInfoTypes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionStoredInfoType:PreventionStoredInfoType default {{parent}}/{{name}}
/// ```
class PreventionStoredInfoType extends pulumi.CustomResource {
  /// A description of the info type.
  late final pulumi.Output<String?> description;

  /// Dictionary which defines the rule.
  /// Structure is documented below.
  late final pulumi.Output<PreventionStoredInfoTypeDictionary?> dictionary;

  /// User set display name of the info type.
  late final pulumi.Output<String?> displayName;

  /// Dictionary which defines the rule.
  /// Structure is documented below.
  late final pulumi.Output<PreventionStoredInfoTypeLargeCustomDictionary?>
      largeCustomDictionary;

  /// The resource name of the info type. Set by the server.
  late final pulumi.Output<String> name;

  /// The parent of the info type in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  late final pulumi.Output<String> parent;

  /// Regular expression which defines the rule.
  /// Structure is documented below.
  late final pulumi.Output<PreventionStoredInfoTypeRegex?> regex;

  /// The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is 100
  /// characters. Can be empty to allow the system to generate one.
  late final pulumi.Output<String> storedInfoTypeId;

  PreventionStoredInfoType(
    String name, {
    PreventionStoredInfoTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionStoredInfoType:PreventionStoredInfoType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.dictionary =
        registerOutput<PreventionStoredInfoTypeDictionary?>('dictionary');
    this.displayName = registerOutput<String?>('displayName');
    this.largeCustomDictionary =
        registerOutput<PreventionStoredInfoTypeLargeCustomDictionary?>(
            'largeCustomDictionary');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.regex = registerOutput<PreventionStoredInfoTypeRegex?>('regex');
    this.storedInfoTypeId = registerOutput<String>('storedInfoTypeId');
  }
}
