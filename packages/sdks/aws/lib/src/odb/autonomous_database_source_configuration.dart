// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_source_configuration_clone_to_refreshable.dart';
import 'autonomous_database_source_configuration_cross_region_data_guard.dart';
import 'autonomous_database_source_configuration_cross_region_disaster_recovery.dart';
import 'autonomous_database_source_configuration_database_clone.dart';
import 'autonomous_database_source_configuration_point_in_time_restore.dart';
import 'autonomous_database_source_configuration_restore_from_backup.dart';

class AutonomousDatabaseSourceConfiguration {
  final pulumi.Input<AutonomousDatabaseSourceConfigurationCloneToRefreshable?>? cloneToRefreshable;
  final pulumi.Input<AutonomousDatabaseSourceConfigurationCrossRegionDataGuard?>? crossRegionDataGuard;
  final pulumi.Input<AutonomousDatabaseSourceConfigurationCrossRegionDisasterRecovery?>? crossRegionDisasterRecovery;
  final pulumi.Input<AutonomousDatabaseSourceConfigurationDatabaseClone?>? databaseClone;
  final pulumi.Input<AutonomousDatabaseSourceConfigurationPointInTimeRestore?>? pointInTimeRestore;
  final pulumi.Input<AutonomousDatabaseSourceConfigurationRestoreFromBackup?>? restoreFromBackup;

  /// Creates a new [AutonomousDatabaseSourceConfiguration].
  /// [cloneToRefreshable] Optional.
  /// [crossRegionDataGuard] Optional.
  /// [crossRegionDisasterRecovery] Optional.
  /// [databaseClone] Optional.
  /// [pointInTimeRestore] Optional.
  /// [restoreFromBackup] Optional.
  const AutonomousDatabaseSourceConfiguration({
    this.cloneToRefreshable,
    this.crossRegionDataGuard,
    this.crossRegionDisasterRecovery,
    this.databaseClone,
    this.pointInTimeRestore,
    this.restoreFromBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloneToRefreshable': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseSourceConfigurationCloneToRefreshable, Map<String, dynamic>>(cloneToRefreshable, (value) => value.toMap()),
      'crossRegionDataGuard': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseSourceConfigurationCrossRegionDataGuard, Map<String, dynamic>>(crossRegionDataGuard, (value) => value.toMap()),
      'crossRegionDisasterRecovery': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseSourceConfigurationCrossRegionDisasterRecovery, Map<String, dynamic>>(crossRegionDisasterRecovery, (value) => value.toMap()),
      'databaseClone': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseSourceConfigurationDatabaseClone, Map<String, dynamic>>(databaseClone, (value) => value.toMap()),
      'pointInTimeRestore': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseSourceConfigurationPointInTimeRestore, Map<String, dynamic>>(pointInTimeRestore, (value) => value.toMap()),
      'restoreFromBackup': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseSourceConfigurationRestoreFromBackup, Map<String, dynamic>>(restoreFromBackup, (value) => value.toMap()),
    };
  }

  factory AutonomousDatabaseSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseSourceConfiguration(
      cloneToRefreshable: (() { final guardedValue = map['cloneToRefreshable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseSourceConfigurationCloneToRefreshable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      crossRegionDataGuard: (() { final guardedValue = map['crossRegionDataGuard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseSourceConfigurationCrossRegionDataGuard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      crossRegionDisasterRecovery: (() { final guardedValue = map['crossRegionDisasterRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseSourceConfigurationCrossRegionDisasterRecovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseClone: (() { final guardedValue = map['databaseClone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseSourceConfigurationDatabaseClone.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pointInTimeRestore: (() { final guardedValue = map['pointInTimeRestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseSourceConfigurationPointInTimeRestore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restoreFromBackup: (() { final guardedValue = map['restoreFromBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseSourceConfigurationRestoreFromBackup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
