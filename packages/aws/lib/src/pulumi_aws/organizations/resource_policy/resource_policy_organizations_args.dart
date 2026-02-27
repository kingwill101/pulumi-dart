// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ResourcePolicy.
class ResourcePolicyOrganizationsArgs {
  /// Content for the resource policy. The text must be correctly formatted JSON that complies with the syntax for the resource policy's type. See the [_AWS Organizations User Guide_](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_delegate_examples.html) for examples.
  final pulumi.Input<String> content;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ResourcePolicyOrganizationsArgs({
    required this.content,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ResourcePolicyOrganizationsArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyOrganizationsArgs(
      content: pulumi.Input.asInput<String>(map['content']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
