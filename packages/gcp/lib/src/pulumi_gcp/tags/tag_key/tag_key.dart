import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_key_args.dart';

/// A TagKey, used to group a set of TagValues.
///
///
/// To get more information about TagKey, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v3/tagKeys)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing)
///
/// ## Example Usage
///
/// ### Tag Key Basic
///
///
///
///
/// ## Import
///
/// TagKey can be imported using any of these accepted formats:
///
/// * `tagKeys/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TagKey can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tags/tagKey:TagKey default tagKeys/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tags/tagKey:TagKey default {{name}}
/// ```
class TagKey extends pulumi.CustomResource {
  /// Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  late final pulumi.Output<String?> allowedValuesRegex;

  /// Output only. Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// User-assigned description of the TagKey. Must not exceed 256 characters.
  late final pulumi.Output<String?> description;

  /// The generated numeric id for the TagKey.
  late final pulumi.Output<String> name;

  /// Output only. Namespaced name of the TagKey.
  late final pulumi.Output<String> namespacedName;

  /// Input only. The resource name of the new TagKey's parent. Must be of the form organizations/{org_id} or projects/{project_id_or_number}.
  late final pulumi.Output<String> parent;

  /// Optional. A purpose cannot be changed once set.
  /// A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag.
  /// Possible values are: `GCE_FIREWALL`, `DATA_GOVERNANCE`.
  late final pulumi.Output<String?> purpose;

  /// Optional. Purpose data cannot be changed once set.
  /// Purpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: `network = "<project-name>/<vpc-name>"`.
  late final pulumi.Output<Map<String, String>?> purposeData;

  /// Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.
  /// The short name can have a maximum length of 256 characters. The permitted character set for the shortName includes all UTF-8 encoded Unicode characters except single quotes ('), double quotes ("), backslashes (\\), and forward slashes (/).
  late final pulumi.Output<String> shortName;

  /// Output only. Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  TagKey(
    String name, {
    TagKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:tags/tagKey:TagKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedValuesRegex = registerOutput<String?>('allowedValuesRegex');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.namespacedName = registerOutput<String>('namespacedName');
    this.parent = registerOutput<String>('parent');
    this.purpose = registerOutput<String?>('purpose');
    this.purposeData = registerOutput<Map<String, String>?>('purposeData');
    this.shortName = registerOutput<String>('shortName');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
