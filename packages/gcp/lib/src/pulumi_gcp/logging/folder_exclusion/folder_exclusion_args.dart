// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for FolderExclusion.
class FolderExclusionArgs {
  /// A human-readable description.
  final Input<String>? description;

  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  final Input<bool>? disabled;

  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  final Input<String> filter;

  /// The folder to be exported to the sink. Note that either [FOLDER_ID] or "folders/[FOLDER_ID]" is
  /// accepted.
  final Input<String> folder;

  /// The name of the logging exclusion.
  final Input<String>? name;

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
      description: Input.asOptionalInput<String>(map['description']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      filter: Input.asInput<String>(map['filter']),
      folder: Input.asInput<String>(map['folder']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
