import 'package:pulumi/pulumi.dart' hide Config;
import 'policy_tag_args.dart';

/// Creates a policy tag in a taxonomy.
/// Auto-naming is currently not supported for this resource.
class PolicyTag extends CustomResource {
  /// Resource names of child policy tags of this policy tag.
  late final Output<List<String>> childPolicyTags;

  /// Description of this policy tag. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns and page breaks, and be at most 2000 bytes long when encoded in UTF-8.
  late final Output<String> description;

  /// User-defined name of this policy tag. The name can't start or end with spaces and must be unique within the parent taxonomy, contain only Unicode letters, numbers, underscores, dashes and spaces, and be at most 200 bytes long when encoded in UTF-8.
  late final Output<String> displayName;
  late final Output<String> location;

  /// Resource name of this policy tag in the URL format. The policy tag manager generates unique taxonomy IDs and policy tag IDs.
  late final Output<String> name;

  /// Resource name of this policy tag's parent policy tag. If empty, this is a top level tag. If not set, defaults to an empty string. For example, for the "LatLong" policy tag in the example above, this field contains the resource name of the "Geolocation" policy tag, and, for "Geolocation", this field is empty.
  late final Output<String> parentPolicyTag;
  late final Output<String> project;
  late final Output<String> taxonomyId;

  PolicyTag(
    String name, {
    PolicyTagArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datacatalog/v1:PolicyTag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.childPolicyTags = registerOutput<List<String>>('childPolicyTags');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parentPolicyTag = registerOutput<String>('parentPolicyTag');
    this.project = registerOutput<String>('project');
    this.taxonomyId = registerOutput<String>('taxonomyId');
  }
}
