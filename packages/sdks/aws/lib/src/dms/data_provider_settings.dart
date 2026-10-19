// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_provider_settings_doc_db_settings.dart';
import 'data_provider_settings_ibm_db2_luw_settings.dart';
import 'data_provider_settings_ibm_db2_zos_settings.dart';
import 'data_provider_settings_maria_db_settings.dart';
import 'data_provider_settings_microsoft_sql_server_settings.dart';
import 'data_provider_settings_mongo_db_settings.dart';
import 'data_provider_settings_mysql_settings.dart';
import 'data_provider_settings_oracle_settings.dart';
import 'data_provider_settings_postgresql_settings.dart';
import 'data_provider_settings_redshift_settings.dart';
import 'data_provider_settings_sybase_ase_settings.dart';

class DataProviderSettings {
  /// Settings for the `docdb` engine. See `docDbSettings` Block below.
  final pulumi.Input<DataProviderSettingsDocDbSettings?>? docDbSettings;
  /// Settings for the `db2` engine. See `ibmDb2LuwSettings` Block below.
  final pulumi.Input<DataProviderSettingsIbmDb2LuwSettings?>? ibmDb2LuwSettings;
  /// Settings for the `db2-zos` engine. See `ibmDb2ZosSettings` Block below.
  final pulumi.Input<DataProviderSettingsIbmDb2ZosSettings?>? ibmDb2ZosSettings;
  /// Settings for the `mariadb` engine. See `mariaDbSettings` Block below.
  final pulumi.Input<DataProviderSettingsMariaDbSettings?>? mariaDbSettings;
  /// Settings for the `sqlserver` engine. See `microsoftSqlServerSettings` Block below.
  final pulumi.Input<DataProviderSettingsMicrosoftSqlServerSettings?>? microsoftSqlServerSettings;
  /// Settings for the `mongodb` engine. See `mongoDbSettings` Block below.
  final pulumi.Input<DataProviderSettingsMongoDbSettings?>? mongoDbSettings;
  /// Settings for the `mysql` and `aurora` engines. See `mysqlSettings` Block below.
  final pulumi.Input<DataProviderSettingsMysqlSettings?>? mysqlSettings;
  /// Settings for the `oracle` engine. See `oracleSettings` Block below.
  final pulumi.Input<DataProviderSettingsOracleSettings?>? oracleSettings;
  /// Settings for the `postgres` and `aurora-postgresql` engines. See `postgresqlSettings` Block below.
  final pulumi.Input<DataProviderSettingsPostgresqlSettings?>? postgresqlSettings;
  /// Settings for the `redshift` engine. See `redshiftSettings` Block below.
  final pulumi.Input<DataProviderSettingsRedshiftSettings?>? redshiftSettings;
  /// Settings for the `sybase` engine. See `sybaseAseSettings` Block below.
  final pulumi.Input<DataProviderSettingsSybaseAseSettings?>? sybaseAseSettings;

  /// Creates a new [DataProviderSettings].
  /// [docDbSettings] Settings for the `docdb` engine. See `docDbSettings` Block below.
  /// [ibmDb2LuwSettings] Settings for the `db2` engine. See `ibmDb2LuwSettings` Block below.
  /// [ibmDb2ZosSettings] Settings for the `db2-zos` engine. See `ibmDb2ZosSettings` Block below.
  /// [mariaDbSettings] Settings for the `mariadb` engine. See `mariaDbSettings` Block below.
  /// [microsoftSqlServerSettings] Settings for the `sqlserver` engine. See `microsoftSqlServerSettings` Block below.
  /// [mongoDbSettings] Settings for the `mongodb` engine. See `mongoDbSettings` Block below.
  /// [mysqlSettings] Settings for the `mysql` and `aurora` engines. See `mysqlSettings` Block below.
  /// [oracleSettings] Settings for the `oracle` engine. See `oracleSettings` Block below.
  /// [postgresqlSettings] Settings for the `postgres` and `aurora-postgresql` engines. See `postgresqlSettings` Block below.
  /// [redshiftSettings] Settings for the `redshift` engine. See `redshiftSettings` Block below.
  /// [sybaseAseSettings] Settings for the `sybase` engine. See `sybaseAseSettings` Block below.
  const DataProviderSettings({
    this.docDbSettings,
    this.ibmDb2LuwSettings,
    this.ibmDb2ZosSettings,
    this.mariaDbSettings,
    this.microsoftSqlServerSettings,
    this.mongoDbSettings,
    this.mysqlSettings,
    this.oracleSettings,
    this.postgresqlSettings,
    this.redshiftSettings,
    this.sybaseAseSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'docDbSettings': ?pulumi.Input.mapOptionalInputValue<DataProviderSettingsDocDbSettings, Map<String, dynamic>>(docDbSettings, (value) => value.toMap()),
      'ibmDb2LuwSettings': ?pulumi.Input.mapOptionalInputValue<DataProviderSettingsIbmDb2LuwSettings, Map<String, dynamic>>(ibmDb2LuwSettings, (value) => value.toMap()),
      'ibmDb2ZosSettings': ?pulumi.Input.mapOptionalInputValue<DataProviderSettingsIbmDb2ZosSettings, Map<String, dynamic>>(ibmDb2ZosSettings, (value) => value.toMap()),
      'mariaDbSettings': ?pulumi.Input.mapOptionalInputValue<DataProviderSettingsMariaDbSettings, Map<String, dynamic>>(mariaDbSettings, (value) => value.toMap()),
      'microsoftSqlServerSettings': ?pulumi.Input.mapOptionalInputValue<DataProviderSettingsMicrosoftSqlServerSettings, Map<String, dynamic>>(microsoftSqlServerSettings, (value) => value.toMap()),
      'mongoDbSettings': ?pulumi.Input.mapOptionalInputValue<DataProviderSettingsMongoDbSettings, Map<String, dynamic>>(mongoDbSettings, (value) => value.toMap()),
      'mysqlSettings': ?pulumi.Input.mapOptionalInputValue<DataProviderSettingsMysqlSettings, Map<String, dynamic>>(mysqlSettings, (value) => value.toMap()),
      'oracleSettings': ?pulumi.Input.mapOptionalInputValue<DataProviderSettingsOracleSettings, Map<String, dynamic>>(oracleSettings, (value) => value.toMap()),
      'postgresqlSettings': ?pulumi.Input.mapOptionalInputValue<DataProviderSettingsPostgresqlSettings, Map<String, dynamic>>(postgresqlSettings, (value) => value.toMap()),
      'redshiftSettings': ?pulumi.Input.mapOptionalInputValue<DataProviderSettingsRedshiftSettings, Map<String, dynamic>>(redshiftSettings, (value) => value.toMap()),
      'sybaseAseSettings': ?pulumi.Input.mapOptionalInputValue<DataProviderSettingsSybaseAseSettings, Map<String, dynamic>>(sybaseAseSettings, (value) => value.toMap()),
    };
  }

  factory DataProviderSettings.fromMap(Map<String, dynamic> map) {
    return DataProviderSettings(
      docDbSettings: (() { final guardedValue = map['docDbSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderSettingsDocDbSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ibmDb2LuwSettings: (() { final guardedValue = map['ibmDb2LuwSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderSettingsIbmDb2LuwSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ibmDb2ZosSettings: (() { final guardedValue = map['ibmDb2ZosSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderSettingsIbmDb2ZosSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mariaDbSettings: (() { final guardedValue = map['mariaDbSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderSettingsMariaDbSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      microsoftSqlServerSettings: (() { final guardedValue = map['microsoftSqlServerSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderSettingsMicrosoftSqlServerSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mongoDbSettings: (() { final guardedValue = map['mongoDbSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderSettingsMongoDbSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mysqlSettings: (() { final guardedValue = map['mysqlSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderSettingsMysqlSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oracleSettings: (() { final guardedValue = map['oracleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderSettingsOracleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postgresqlSettings: (() { final guardedValue = map['postgresqlSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderSettingsPostgresqlSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redshiftSettings: (() { final guardedValue = map['redshiftSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderSettingsRedshiftSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sybaseAseSettings: (() { final guardedValue = map['sybaseAseSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderSettingsSybaseAseSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
