// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatabaseInstanceLatestRecoveryTime.
class GetDatabaseInstanceLatestRecoveryTimeArgs {
  /// The name of the instance.
  final pulumi.Input<String> instance;

  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? sourceInstanceDeletionTime;

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
      instance: pulumi.Input.asInput<String>(map['instance']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sourceInstanceDeletionTime: pulumi.Input.asOptionalInput<String>(
          map['sourceInstanceDeletionTime']),
    );
  }
}
