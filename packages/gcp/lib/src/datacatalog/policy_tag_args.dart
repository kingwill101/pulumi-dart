// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_policy_tag_policy_tag_args_doc}
/// The set of arguments for PolicyTag.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_policy_tag_policy_tag_args_doc}
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

  /// Creates a new [PolicyTagArgs].
  /// [description] Description of this policy tag. It must: contain only unicode characters, tabs,
  /// [displayName] User defined name of this policy tag. It must: be unique within the parent
  /// [parentPolicyTag] Resource name of this policy tag's parent policy tag.
  /// [taxonomy] Taxonomy the policy tag is associated with
  PolicyTagArgs({
    String? description,
    required String displayName,
    String? parentPolicyTag,
    required String taxonomy,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        parentPolicyTag = pulumi.Input.asOptionalInput<String>(parentPolicyTag),
        taxonomy = pulumi.Input.asInput<String>(taxonomy);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      parentPolicyTag: map['parentPolicyTag'] == null
          ? null
          : map['parentPolicyTag'] as String,
      taxonomy: map['taxonomy'] as String,
    );
  }
}
