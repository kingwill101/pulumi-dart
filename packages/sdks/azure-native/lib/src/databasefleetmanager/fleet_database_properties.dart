// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity.dart';
import 'transparent_data_encryption.dart';

/// Fleet database properties.
class FleetDatabaseProperties {
  /// Database collation.
  final pulumi.Input<String?>? collation;
  /// Create mode. Available options: Default - Create a database. Copy - Copy the source database (source database name must be specified) PointInTimeRestore - Create a database by restoring source database from a point in time (source database name and restore from time must be specified)
  final pulumi.Input<dynamic>? createMode;
  /// Identity property.
  final pulumi.Input<Identity?>? identity;
  /// Additional database properties to be applied as the underlying database resource tags.
  final pulumi.Input<Map<String, String>?>? resourceTags;
  /// Restore from time when CreateMode is PointInTimeRestore.
  final pulumi.Input<String?>? restoreFromTime;
  /// Source database name used when CreateMode is Copy or PointInTimeRestore.
  final pulumi.Input<String?>? sourceDatabaseName;
  /// Name of the tier this database belongs to.
  final pulumi.Input<String?>? tierName;
  /// Transparent Data Encryption properties
  final pulumi.Input<TransparentDataEncryption?>? transparentDataEncryption;

  /// Creates a new [FleetDatabaseProperties].
  /// [collation] Database collation.
  /// [createMode] Create mode. Available options: Default - Create a database. Copy - Copy the source database (source database name must be specified) PointInTimeRestore - Create a database by restoring source database from a point in time (source database name and restore from time must be specified)
  /// [identity] Identity property.
  /// [resourceTags] Additional database properties to be applied as the underlying database resource tags.
  /// [restoreFromTime] Restore from time when CreateMode is PointInTimeRestore.
  /// [sourceDatabaseName] Source database name used when CreateMode is Copy or PointInTimeRestore.
  /// [tierName] Name of the tier this database belongs to.
  /// [transparentDataEncryption] Transparent Data Encryption properties
  const FleetDatabaseProperties({
    this.collation,
    this.createMode,
    this.identity,
    this.resourceTags,
    this.restoreFromTime,
    this.sourceDatabaseName,
    this.tierName,
    this.transparentDataEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collation': ?collation,
      'createMode': ?createMode,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'resourceTags': ?resourceTags,
      'restoreFromTime': ?restoreFromTime,
      'sourceDatabaseName': ?sourceDatabaseName,
      'tierName': ?tierName,
      'transparentDataEncryption': ?pulumi.Input.mapOptionalInputValue<TransparentDataEncryption, Map<String, dynamic>>(transparentDataEncryption, (value) => value.toMap()),
    };
  }

  factory FleetDatabaseProperties.fromMap(Map<String, dynamic> map) {
    return FleetDatabaseProperties(
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      restoreFromTime: (() { final guardedValue = map['restoreFromTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDatabaseName: (() { final guardedValue = map['sourceDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tierName: (() { final guardedValue = map['tierName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transparentDataEncryption: (() { final guardedValue = map['transparentDataEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransparentDataEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
