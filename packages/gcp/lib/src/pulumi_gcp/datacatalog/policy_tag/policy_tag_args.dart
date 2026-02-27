// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PolicyTag.
class PolicyTagArgs {
  /// Description of this policy tag. It must: contain only unicode characters, tabs,
  /// newlines, carriage returns and page breaks; and be at most 2000 bytes long when
  /// encoded in UTF-8. If not set, defaults to an empty description.
  /// If not set, defaults to an empty description.
  final pulumi.Input<String>? description;

  /// User defined name of this policy tag. It must: be unique within the parent
  /// taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces;
  /// not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.
  final pulumi.Input<String> displayName;

  /// Resource name of this policy tag's parent policy tag.
  /// If empty, it means this policy tag is a top level policy tag.
  /// If not set, defaults to an empty string.
  final pulumi.Input<String>? parentPolicyTag;

  /// Taxonomy the policy tag is associated with
  final pulumi.Input<String> taxonomy;

  PolicyTagArgs({
    this.description,
    required this.displayName,
    this.parentPolicyTag,
    required this.taxonomy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final parentPolicyTagValue = parentPolicyTag;
    if (parentPolicyTagValue != null) {
      map['parentPolicyTag'] = parentPolicyTagValue;
    }
    map['taxonomy'] = taxonomy;
    return map;
  }

  factory PolicyTagArgs.fromMap(Map<String, dynamic> map) {
    return PolicyTagArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      parentPolicyTag:
          pulumi.Input.asOptionalInput<String>(map['parentPolicyTag']),
      taxonomy: pulumi.Input.asInput<String>(map['taxonomy']),
    );
  }
}
