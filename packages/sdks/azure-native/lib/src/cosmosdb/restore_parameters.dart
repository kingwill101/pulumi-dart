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
  const RestoreParameters({
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
      databasesToRestore: (() { final guardedValue = map['databasesToRestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseRestoreResource>(guardedValue, (value) => DatabaseRestoreResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gremlinDatabasesToRestore: (() { final guardedValue = map['gremlinDatabasesToRestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GremlinDatabaseRestoreResource>(guardedValue, (value) => GremlinDatabaseRestoreResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      restoreMode: (() { final guardedValue = map['restoreMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreSource: (() { final guardedValue = map['restoreSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreTimestampInUtc: (() { final guardedValue = map['restoreTimestampInUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreWithTtlDisabled: (() { final guardedValue = map['restoreWithTtlDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceBackupLocation: (() { final guardedValue = map['sourceBackupLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tablesToRestore: (() { final guardedValue = map['tablesToRestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

