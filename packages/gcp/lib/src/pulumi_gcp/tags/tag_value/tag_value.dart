import 'package:pulumi/pulumi.dart';
import 'tag_value_args.dart';

/// A TagValue is a child of a particular TagKey. TagValues are used to group cloud resources for the purpose of controlling them using policies.
///
///
/// To get more information about TagValue, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v3/tagValues)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing)
///
/// ## Example Usage
///
/// ### Tag Value Basic
///
///
///
///
/// ## Import
///
/// TagValue can be imported using any of these accepted formats:
///
/// * `tagValues/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TagValue can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tags/tagValue:TagValue default tagValues/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tags/tagValue:TagValue default {{name}}
/// ```
class TagValue extends CustomResource {
  /// Output only. Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// User-assigned description of the TagValue. Must not exceed 256 characters.
  late final Output<String?> description;

  /// The generated numeric id for the TagValue.
  late final Output<String> name;

  /// Output only. Namespaced name of the TagValue. Will be in the format {parentNamespace}/{tagKeyShortName}/{shortName}.
  late final Output<String> namespacedName;

  /// Input only. The resource name of the new TagValue's parent. Must be of the form tagKeys/{tag_key_id}.
  late final Output<String> parent;

  /// Input only. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.
  /// The short name can have a maximum length of 256 characters. The permitted character set for the shortName includes all UTF-8 encoded Unicode characters except single quotes ('), double quotes ("), backslashes (\\), and forward slashes (/).
  late final Output<String> shortName;

  /// Output only. Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  TagValue(
    String name, {
    TagValueArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:tags/tagValue:TagValue',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.namespacedName = registerOutput<String>('namespacedName');
    this.parent = registerOutput<String>('parent');
    this.shortName = registerOutput<String>('shortName');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
