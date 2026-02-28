// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_folder_folder_args_doc}
/// The set of arguments for Folder.
/// {@endtemplate}
/// {@macro pulumi_organizations_folder_folder_args_doc}
class FolderArgs {
  final pulumi.Input<bool>? deletionProtection;
  /// The folder’s display name.
  /// A folder’s display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters.
  final pulumi.Input<String> displayName;
  /// The resource name of the parent Folder or Organization.
  /// Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.
  final pulumi.Input<String> parent;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when  mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FolderArgs].
  /// [deletionProtection] Optional.
  /// [displayName] The folder’s display name.
  /// [parent] The resource name of the parent Folder or Organization.
  /// [tags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when  mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  FolderArgs({
    bool? deletionProtection,
    required String displayName,
    required String parent,
    Map<String, String>? tags,
  }) :
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      displayName = pulumi.Input.asInput<String>(displayName),
      parent = pulumi.Input.asInput<String>(parent),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtection': ?deletionProtection,
      'displayName': displayName,
      'parent': parent,
      'tags': ?tags,
    };
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as bool,
      displayName: map['displayName'] as String,
      parent: map['parent'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

