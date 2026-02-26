// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Folder.
class FolderArgs {
  final Input<bool>? deletionProtection;

  /// The folder’s display name.
  /// A folder’s display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters.
  final Input<String> displayName;

  /// The resource name of the parent Folder or Organization.
  /// Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.
  final Input<String> parent;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when  mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the <span pulumi-lang-nodejs="`gcp.tags.TagValue`" pulumi-lang-dotnet="`gcp.tags.TagValue`" pulumi-lang-go="`tags.TagValue`" pulumi-lang-python="`tags.TagValue`" pulumi-lang-yaml="`gcp.tags.TagValue`" pulumi-lang-java="`gcp.tags.TagValue`">`gcp.tags.TagValue`</span> resource.
  final Input<Map<String, String>>? tags;

  FolderArgs({
    this.deletionProtection,
    required this.displayName,
    required this.parent,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    map['displayName'] = displayName;
    map['parent'] = parent;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      displayName: Input.asInput<String>(map['displayName']),
      parent: Input.asInput<String>(map['parent']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
