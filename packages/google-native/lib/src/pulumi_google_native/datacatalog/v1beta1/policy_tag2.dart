import 'package:pulumi/pulumi.dart';
import 'policy_tag_args2.dart';

/// Creates a policy tag in the specified taxonomy.
/// Auto-naming is currently not supported for this resource.
class PolicyTag2 extends CustomResource {
  /// Resource names of child policy tags of this policy tag.
  late final Output<List<String>> childPolicyTags;

  /// Description of this policy tag. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description. If not set, defaults to an empty description.
  late final Output<String> description;

  /// User defined name of this policy tag. It must: be unique within the parent taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.
  late final Output<String> displayName;
  late final Output<String> location;

  /// Resource name of this policy tag, whose format is: "projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{id}".
  late final Output<String> name;

  /// Resource name of this policy tag's parent policy tag (e.g. for the "LatLong" policy tag in the example above, this field contains the resource name of the "Geolocation" policy tag). If empty, it means this policy tag is a top level policy tag (e.g. this field is empty for the "Geolocation" policy tag in the example above). If not set, defaults to an empty string.
  late final Output<String> parentPolicyTag;
  late final Output<String> project;
  late final Output<String> taxonomyId;

  PolicyTag2(
    String name, {
    PolicyTagArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datacatalog/v1beta1:PolicyTag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.childPolicyTags = Output.createUnknown<List<String>>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parentPolicyTag = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.taxonomyId = Output.createUnknown<String>();
  }
}
