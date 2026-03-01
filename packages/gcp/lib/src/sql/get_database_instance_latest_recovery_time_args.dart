// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_database_instance_latest_recovery_time_get_database_instance_latest_recovery_time_args_doc}
/// Arguments for getDatabaseInstanceLatestRecoveryTime.
/// {@endtemplate}
/// {@macro pulumi_sql_get_database_instance_latest_recovery_time_get_database_instance_latest_recovery_time_args_doc}
class GetDatabaseInstanceLatestRecoveryTimeArgs {
  /// The name of the instance.
  final pulumi.Input<String> instance;

  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? sourceInstanceDeletionTime;

  /// Creates a new [GetDatabaseInstanceLatestRecoveryTimeArgs].
  /// [instance] The name of the instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceInstanceDeletionTime] Optional.
  GetDatabaseInstanceLatestRecoveryTimeArgs({
    required String instance,
    String? project,
    String? sourceInstanceDeletionTime,
  }) : instance = pulumi.Input.asInput<String>(instance),
       project = pulumi.Input.asOptionalInput<String>(project),
       sourceInstanceDeletionTime = pulumi.Input.asOptionalInput<String>(
         sourceInstanceDeletionTime,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'project': ?project,
      'sourceInstanceDeletionTime': ?sourceInstanceDeletionTime,
    };
  }

  factory GetDatabaseInstanceLatestRecoveryTimeArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstanceLatestRecoveryTimeArgs(
      instance: map['instance'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceInstanceDeletionTime: map['sourceInstanceDeletionTime'] == null
          ? null
          : map['sourceInstanceDeletionTime'] as String,
    );
  }
}
