// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Dataset.
class DatasetDatalabelingV1beta1Args {
  /// Optional. User-provided description of the annotation specification set. The description can be up to 10000 characters long.
  final pulumi.Input<String>? description;

  /// The display name of the dataset. Maximum of 64 characters.
  final pulumi.Input<String> displayName;

  /// Last time that the Dataset is migrated to AI Platform V2. If any of the AnnotatedDataset is migrated, the last_migration_time in Dataset is also updated.
  final pulumi.Input<String>? lastMigrateTime;
  final pulumi.Input<String>? project;

  DatasetDatalabelingV1beta1Args({
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

  factory DatasetDatalabelingV1beta1Args.fromMap(Map<String, dynamic> map) {
    return DatasetDatalabelingV1beta1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      lastMigrateTime:
          pulumi.Input.asOptionalInput<String>(map['lastMigrateTime']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
