// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for FolderExclusion.
class FolderExclusionArgs {
  /// A human-readable description.
  final pulumi.Input<String>? description;

  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  final pulumi.Input<bool>? disabled;

  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  final pulumi.Input<String> filter;

  /// The folder to be exported to the sink. Note that either [FOLDER_ID] or "folders/[FOLDER_ID]" is
  /// accepted.
  final pulumi.Input<String> folder;

  /// The name of the logging exclusion.
  final pulumi.Input<String>? name;

  FolderExclusionArgs({
    this.description,
    this.disabled,
    required this.filter,
    required this.folder,
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
    map['folder'] = folder;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory FolderExclusionArgs.fromMap(Map<String, dynamic> map) {
    return FolderExclusionArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      filter: pulumi.Input.asInput<String>(map['filter']),
      folder: pulumi.Input.asInput<String>(map['folder']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
