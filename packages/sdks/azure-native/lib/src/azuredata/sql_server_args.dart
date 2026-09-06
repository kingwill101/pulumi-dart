// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredata_sql_server_args_doc}
/// The set of arguments for SqlServer.
/// {@endtemplate}
/// {@macro pulumi_azuredata_sql_server_args_doc}
class SqlServerArgs {
  /// Cores of the Sql Server.
  final pulumi.Input<int?>? cores;
  /// Sql Server Edition.
  final pulumi.Input<String?>? edition;
  /// Sql Server Json Property Bag.
  final pulumi.Input<String?>? propertyBag;
  /// ID for Parent Sql Server Registration.
  final pulumi.Input<String?>? registrationID;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL Server.
  final pulumi.Input<String?>? sqlServerName;
  /// Name of the SQL Server registration.
  final pulumi.Input<String> sqlServerRegistrationName;
  /// Version of the Sql Server.
  final pulumi.Input<String?>? version;

  /// Creates a new [SqlServerArgs].
  /// [cores] Cores of the Sql Server.
  /// [edition] Sql Server Edition.
  /// [propertyBag] Sql Server Json Property Bag.
  /// [registrationID] ID for Parent Sql Server Registration.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sqlServerName] Name of the SQL Server.
  /// [sqlServerRegistrationName] Name of the SQL Server registration.
  /// [version] Version of the Sql Server.
  const SqlServerArgs({
    this.cores,
    this.edition,
    this.propertyBag,
    this.registrationID,
    required this.resourceGroupName,
    this.sqlServerName,
    required this.sqlServerRegistrationName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cores': ?cores,
      'edition': ?edition,
      'propertyBag': ?propertyBag,
      'registrationID': ?registrationID,
      'resourceGroupName': resourceGroupName,
      'sqlServerName': ?sqlServerName,
      'sqlServerRegistrationName': sqlServerRegistrationName,
      'version': ?version,
    };
  }

  factory SqlServerArgs.fromMap(Map<String, dynamic> map) {
    return SqlServerArgs(
      cores: (() { final guardedValue = map['cores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyBag: (() { final guardedValue = map['propertyBag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationID: (() { final guardedValue = map['registrationID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlServerName: (() { final guardedValue = map['sqlServerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlServerRegistrationName: pulumi.Input.fromValue(map['sqlServerRegistrationName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
