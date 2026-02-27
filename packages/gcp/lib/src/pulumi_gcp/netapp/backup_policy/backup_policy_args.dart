// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BackupPolicy.
class BackupPolicyArgs {
  /// Number of daily backups to keep. Note that the minimum daily backup limit is 2.
  final Input<int> dailyBackupLimit;

  /// An optional description of this resource.
  final Input<String>? description;

  /// If enabled, make backups automatically according to the schedules.
  /// This will be applied to all volumes that have this policy attached and enforced on volume level.
  final Input<bool>? enabled;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Name of the region for the policy to apply to.
  final Input<String> location;

  /// Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  final Input<int> monthlyBackupLimit;

  /// The name of the backup policy. Needs to be unique per location.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  final Input<int> weeklyBackupLimit;

  BackupPolicyArgs({
    required this.dailyBackupLimit,
    this.description,
    this.enabled,
    this.labels,
    required this.location,
    required this.monthlyBackupLimit,
    this.name,
    this.project,
    required this.weeklyBackupLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dailyBackupLimit'] = dailyBackupLimit;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['monthlyBackupLimit'] = monthlyBackupLimit;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['weeklyBackupLimit'] = weeklyBackupLimit;
    return map;
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      dailyBackupLimit: Input.asInput<int>(map['dailyBackupLimit']),
      description: Input.asOptionalInput<String>(map['description']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      monthlyBackupLimit: Input.asInput<int>(map['monthlyBackupLimit']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      weeklyBackupLimit: Input.asInput<int>(map['weeklyBackupLimit']),
    );
  }
}
