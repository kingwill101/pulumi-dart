import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_tag_args.dart';

/// Denotes one policy tag in a taxonomy.
///
///
/// To get more information about PolicyTag, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.taxonomies.policyTags)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Taxonomies Policy Tag Basic
///
///
///
/// ### Data Catalog Taxonomies Policy Tag Child Policies
///
///
///
///
/// ## Import
///
/// PolicyTag can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PolicyTag can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/policyTag:PolicyTag default {{name}}
/// ```
class PolicyTag extends pulumi.CustomResource {
  /// Resource names of child policy tags of this policy tag.
  late final pulumi.Output<List<String>> childPolicyTags;

  /// Description of this policy tag. It must: contain only unicode characters, tabs,
  /// newlines, carriage returns and page breaks; and be at most 2000 bytes long when
  /// encoded in UTF-8. If not set, defaults to an empty description.
  /// If not set, defaults to an empty description.
  late final pulumi.Output<String?> description;

  /// User defined name of this policy tag. It must: be unique within the parent
  /// taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces;
  /// not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.
  late final pulumi.Output<String> displayName;

  /// Resource name of this policy tag, whose format is:
  /// "projects/{project}/locations/{region}/taxonomies/{taxonomy}/policyTags/{policytag}"
  late final pulumi.Output<String> name;

  /// Resource name of this policy tag's parent policy tag.
  /// If empty, it means this policy tag is a top level policy tag.
  /// If not set, defaults to an empty string.
  late final pulumi.Output<String?> parentPolicyTag;

  /// Taxonomy the policy tag is associated with
  late final pulumi.Output<String> taxonomy;

  PolicyTag(
    String name, {
    PolicyTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/policyTag:PolicyTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.childPolicyTags = registerOutput<List<String>>('childPolicyTags');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.parentPolicyTag = registerOutput<String?>('parentPolicyTag');
    this.taxonomy = registerOutput<String>('taxonomy');
  }
}
