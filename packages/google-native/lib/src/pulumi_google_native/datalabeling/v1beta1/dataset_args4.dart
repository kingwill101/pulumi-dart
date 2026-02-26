// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Dataset.
class DatasetArgs4 {
  /// Optional. User-provided description of the annotation specification set. The description can be up to 10000 characters long.
  final Input<String>? description;

  /// The display name of the dataset. Maximum of 64 characters.
  final Input<String> displayName;

  /// Last time that the Dataset is migrated to AI Platform V2. If any of the AnnotatedDataset is migrated, the last_migration_time in Dataset is also updated.
  final Input<String>? lastMigrateTime;
  final Input<String>? project;

  DatasetArgs4({
    this.description,
    required this.displayName,
    this.lastMigrateTime,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final lastMigrateTimeValue = lastMigrateTime;
    if (lastMigrateTimeValue != null) {
      map['lastMigrateTime'] = lastMigrateTimeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DatasetArgs4.fromMap(Map<String, dynamic> map) {
    return DatasetArgs4(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      lastMigrateTime: Input.asOptionalInput<String>(map['lastMigrateTime']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
