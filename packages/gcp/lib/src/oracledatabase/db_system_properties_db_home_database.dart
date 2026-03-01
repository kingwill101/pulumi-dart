// ignore_for_file: unused_element, unnecessary_cast

import 'db_system_properties_db_home_database_properties.dart';

class DbSystemPropertiesDbHomeDatabase {
  /// The password for the default ADMIN user.
  final String adminPassword;

  /// The character set for the database. The default is AL32UTF8.
  final String? characterSet;

  /// (Output)
  /// The date and time that the Database was created.
  final String? createTime;

  /// The database ID of the Database.
  final String databaseId;

  /// The name of the DbHome resource associated with the Database.
  final String? dbHomeName;

  /// The database name. The name must begin with an alphabetic character and can
  /// contain a maximum of eight alphanumeric characters. Special characters are
  /// not permitted.
  final String? dbName;

  /// The DB_UNIQUE_NAME of the Oracle Database being backed up.
  final String? dbUniqueName;

  /// The GCP Oracle zone where the Database is created.
  final String? gcpOracleZone;

  /// (Output)
  /// Identifier. The name of the Database resource in the following format:
  /// projects/{project}/locations/{region}/databases/{database}
  final String? name;

  /// The national character set for the database. The default is AL16UTF16.
  final String? ncharacterSet;

  /// (Output)
  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  final String? ociUrl;

  /// (Output)
  /// The Status of Operations Insights for this Database.
  /// Possible values:
  /// ENABLING
  /// ENABLED
  /// DISABLING
  /// NOT_ENABLED
  /// FAILED_ENABLING
  /// FAILED_DISABLING
  final String? opsInsightsStatus;

  /// The properties of a Database.
  /// Structure is documented below.
  final DbSystemPropertiesDbHomeDatabaseProperties? properties;

  /// The TDE wallet password for the database.
  final String? tdeWalletPassword;

  /// Creates a new [DbSystemPropertiesDbHomeDatabase].
  /// [adminPassword] The password for the default ADMIN user.
  /// [characterSet] The character set for the database. The default is AL32UTF8.
  /// [createTime] (Output)
  /// [databaseId] The database ID of the Database.
  /// [dbHomeName] The name of the DbHome resource associated with the Database.
  /// [dbName] The database name. The name must begin with an alphabetic character and can
  /// [dbUniqueName] The DB_UNIQUE_NAME of the Oracle Database being backed up.
  /// [gcpOracleZone] The GCP Oracle zone where the Database is created.
  /// [name] (Output)
  /// [ncharacterSet] The national character set for the database. The default is AL16UTF16.
  /// [ociUrl] (Output)
  /// [opsInsightsStatus] (Output)
  /// [properties] The properties of a Database.
  /// [tdeWalletPassword] The TDE wallet password for the database.
  DbSystemPropertiesDbHomeDatabase({
    required this.adminPassword,
    this.characterSet,
    this.createTime,
    required this.databaseId,
    this.dbHomeName,
    this.dbName,
    this.dbUniqueName,
    this.gcpOracleZone,
    this.name,
    this.ncharacterSet,
    this.ociUrl,
    this.opsInsightsStatus,
    this.properties,
    this.tdeWalletPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': adminPassword,
      'characterSet': ?characterSet,
      'createTime': ?createTime,
      'databaseId': databaseId,
      'dbHomeName': ?dbHomeName,
      'dbName': ?dbName,
      'dbUniqueName': ?dbUniqueName,
      'gcpOracleZone': ?gcpOracleZone,
      'name': ?name,
      'ncharacterSet': ?ncharacterSet,
      'ociUrl': ?ociUrl,
      'opsInsightsStatus': ?opsInsightsStatus,
      'properties': ?properties == null ? null : properties!.toMap(),
      'tdeWalletPassword': ?tdeWalletPassword,
    };
  }

  factory DbSystemPropertiesDbHomeDatabase.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDbHomeDatabase(
      adminPassword: map['adminPassword'] as String,
      characterSet: map['characterSet'] == null
          ? null
          : map['characterSet'] as String,
      createTime: map['createTime'] == null
          ? null
          : map['createTime'] as String,
      databaseId: map['databaseId'] as String,
      dbHomeName: map['dbHomeName'] == null
          ? null
          : map['dbHomeName'] as String,
      dbName: map['dbName'] == null ? null : map['dbName'] as String,
      dbUniqueName: map['dbUniqueName'] == null
          ? null
          : map['dbUniqueName'] as String,
      gcpOracleZone: map['gcpOracleZone'] == null
          ? null
          : map['gcpOracleZone'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      ncharacterSet: map['ncharacterSet'] == null
          ? null
          : map['ncharacterSet'] as String,
      ociUrl: map['ociUrl'] == null ? null : map['ociUrl'] as String,
      opsInsightsStatus: map['opsInsightsStatus'] == null
          ? null
          : map['opsInsightsStatus'] as String,
      properties: map['properties'] == null
          ? null
          : DbSystemPropertiesDbHomeDatabaseProperties.fromMap(
              (map['properties'] as Map).cast<String, dynamic>(),
            ),
      tdeWalletPassword: map['tdeWalletPassword'] == null
          ? null
          : map['tdeWalletPassword'] as String,
    );
  }
}
