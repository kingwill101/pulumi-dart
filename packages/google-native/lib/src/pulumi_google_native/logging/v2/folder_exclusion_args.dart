// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for FolderExclusion.
class FolderExclusionArgs {
  /// Optional. A description of this exclusion.
  final Input<String>? description;

  /// Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.
  final Input<bool>? disabled;

  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries) that matches the log entries to be excluded. By using the sample function (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity<ERROR sample(insertId, 0.99)
  final Input<String> filter;
  final Input<String> folderId;

  /// A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  final Input<String>? name;

  FolderExclusionArgs({
    this.description,
    this.disabled,
    required this.filter,
    required this.folderId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['filter'] = filter;
    map['folderId'] = folderId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory FolderExclusionArgs.fromMap(Map<String, dynamic> map) {
    return FolderExclusionArgs(
      description: Input.asOptionalInput<String>(map['description']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      filter: Input.asInput<String>(map['filter']),
      folderId: Input.asInput<String>(map['folderId']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
