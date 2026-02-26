// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDatabaseInstanceLatestRecoveryTime.
class GetDatabaseInstanceLatestRecoveryTimeArgs {
  /// The name of the instance.
  final Input<String> instance;

  /// The ID of the project in which the resource belongs.
  final Input<String>? project;
  final Input<String>? sourceInstanceDeletionTime;

  GetDatabaseInstanceLatestRecoveryTimeArgs({
    required this.instance,
    this.project,
    this.sourceInstanceDeletionTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sourceInstanceDeletionTimeValue = sourceInstanceDeletionTime;
    if (sourceInstanceDeletionTimeValue != null) {
      map['sourceInstanceDeletionTime'] = sourceInstanceDeletionTimeValue;
    }
    return map;
  }

  factory GetDatabaseInstanceLatestRecoveryTimeArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceLatestRecoveryTimeArgs(
      instance: Input.asInput<String>(map['instance']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceInstanceDeletionTime:
          Input.asOptionalInput<String>(map['sourceInstanceDeletionTime']),
    );
  }
}
