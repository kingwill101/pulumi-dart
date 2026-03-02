// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_restore_resource.dart';
import 'gremlin_database_restore_resource.dart';

/// Parameters to indicate the information about the restore.
class RestoreParameters {
  /// List of specific databases available for restore.
  final pulumi.Input<List<DatabaseRestoreResource>>? databasesToRestore;
  /// List of specific gremlin databases available for restore.
  final pulumi.Input<List<GremlinDatabaseRestoreResource>>? gremlinDatabasesToRestore;
  /// Describes the mode of the restore.
  final pulumi.Input<String>? restoreMode;
  /// The id of the restorable database account from which the restore has to be initiated. For example: /subscriptions/{subscriptionId}/providers/Microsoft.DocumentDB/locations/{location}/restorableDatabaseAccounts/{restorableDatabaseAccountName}
  final pulumi.Input<String>? restoreSource;
  /// Time to which the account has to be restored (ISO-8601 format).
  final pulumi.Input<String>? restoreTimestampInUtc;
  /// Specifies whether the restored account will have Time-To-Live disabled upon the successful restore.
  final pulumi.Input<bool>? restoreWithTtlDisabled;
  /// The source backup location for restore.
  final pulumi.Input<String>? sourceBackupLocation;
  /// List of specific tables available for restore.
  final pulumi.Input<List<String>>? tablesToRestore;

  /// Creates a new [RestoreParameters].
  /// [databasesToRestore] List of specific databases available for restore.
  /// [gremlinDatabasesToRestore] List of specific gremlin databases available for restore.
  /// [restoreMode] Describes the mode of the restore.
  /// [restoreSource] The id of the restorable database account from which the restore has to be initiated. For example: /subscriptions/{subscriptionId}/providers/Microsoft.DocumentDB/locations/{location}/restorableDatabaseAccounts/{restorableDatabaseAccountName}
  /// [restoreTimestampInUtc] Time to which the account has to be restored (ISO-8601 format).
  /// [restoreWithTtlDisabled] Specifies whether the restored account will have Time-To-Live disabled upon the successful restore.
  /// [sourceBackupLocation] The source backup location for restore.
  /// [tablesToRestore] List of specific tables available for restore.
  RestoreParameters({
    this.databasesToRestore,
    this.gremlinDatabasesToRestore,
    this.restoreMode,
    this.restoreSource,
    this.restoreTimestampInUtc,
    this.restoreWithTtlDisabled,
    this.sourceBackupLocation,
    this.tablesToRestore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databasesToRestore': ?pulumi.Input.mapOptionalInputValue<List<DatabaseRestoreResource>, List<Map<String, dynamic>>>(databasesToRestore, (value) => pulumi.Input.encodeList<DatabaseRestoreResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gremlinDatabasesToRestore': ?pulumi.Input.mapOptionalInputValue<List<GremlinDatabaseRestoreResource>, List<Map<String, dynamic>>>(gremlinDatabasesToRestore, (value) => pulumi.Input.encodeList<GremlinDatabaseRestoreResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restoreMode': ?restoreMode,
      'restoreSource': ?restoreSource,
      'restoreTimestampInUtc': ?restoreTimestampInUtc,
      'restoreWithTtlDisabled': ?restoreWithTtlDisabled,
      'sourceBackupLocation': ?sourceBackupLocation,
      'tablesToRestore': ?tablesToRestore,
    };
  }

  factory RestoreParameters.fromMap(Map<String, dynamic> map) {
    return RestoreParameters(
      databasesToRestore: map['databasesToRestore'] == null ? null : (pulumi.Input.decodeList<DatabaseRestoreResource>(map['databasesToRestore']!, (value) => DatabaseRestoreResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gremlinDatabasesToRestore: map['gremlinDatabasesToRestore'] == null ? null : (pulumi.Input.decodeList<GremlinDatabaseRestoreResource>(map['gremlinDatabasesToRestore']!, (value) => GremlinDatabaseRestoreResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      restoreMode: map['restoreMode'] == null ? null : (map['restoreMode']! as String).input(),
      restoreSource: map['restoreSource'] == null ? null : (map['restoreSource']! as String).input(),
      restoreTimestampInUtc: map['restoreTimestampInUtc'] == null ? null : (map['restoreTimestampInUtc']! as String).input(),
      restoreWithTtlDisabled: map['restoreWithTtlDisabled'] == null ? null : (map['restoreWithTtlDisabled']! as bool).input(),
      sourceBackupLocation: map['sourceBackupLocation'] == null ? null : (map['sourceBackupLocation']! as String).input(),
      tablesToRestore: map['tablesToRestore'] == null ? null : ((map['tablesToRestore']! as List).cast<String>()).input(),
    );
  }
}

