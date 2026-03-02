// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity.dart';
import 'transparent_data_encryption.dart';

/// Fleet database properties.
class FleetDatabaseProperties {
  /// Database collation.
  final pulumi.Input<String>? collation;
  /// Create mode. Available options: Default - Create a database. Copy - Copy the source database (source database name must be specified) PointInTimeRestore - Create a database by restoring source database from a point in time (source database name and restore from time must be specified)
  final pulumi.Input<String>? createMode;
  /// Identity property.
  final pulumi.Input<Identity>? identity;
  /// Additional database properties to be applied as the underlying database resource tags.
  final pulumi.Input<Map<String, String>>? resourceTags;
  /// Restore from time when CreateMode is PointInTimeRestore.
  final pulumi.Input<String>? restoreFromTime;
  /// Source database name used when CreateMode is Copy or PointInTimeRestore.
  final pulumi.Input<String>? sourceDatabaseName;
  /// Name of the tier this database belongs to.
  final pulumi.Input<String>? tierName;
  /// Transparent Data Encryption properties
  final pulumi.Input<TransparentDataEncryption>? transparentDataEncryption;

  /// Creates a new [FleetDatabaseProperties].
  /// [collation] Database collation.
  /// [createMode] Create mode. Available options: Default - Create a database. Copy - Copy the source database (source database name must be specified) PointInTimeRestore - Create a database by restoring source database from a point in time (source database name and restore from time must be specified)
  /// [identity] Identity property.
  /// [resourceTags] Additional database properties to be applied as the underlying database resource tags.
  /// [restoreFromTime] Restore from time when CreateMode is PointInTimeRestore.
  /// [sourceDatabaseName] Source database name used when CreateMode is Copy or PointInTimeRestore.
  /// [tierName] Name of the tier this database belongs to.
  /// [transparentDataEncryption] Transparent Data Encryption properties
  FleetDatabaseProperties({
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
      collation: map['collation'] == null ? null : (map['collation']! as String).input(),
      createMode: map['createMode'] == null ? null : (map['createMode']! as String).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      resourceTags: map['resourceTags'] == null ? null : ((map['resourceTags']! as Map).cast<String, String>()).input(),
      restoreFromTime: map['restoreFromTime'] == null ? null : (map['restoreFromTime']! as String).input(),
      sourceDatabaseName: map['sourceDatabaseName'] == null ? null : (map['sourceDatabaseName']! as String).input(),
      tierName: map['tierName'] == null ? null : (map['tierName']! as String).input(),
      transparentDataEncryption: map['transparentDataEncryption'] == null ? null : (TransparentDataEncryption.fromMap((map['transparentDataEncryption']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

