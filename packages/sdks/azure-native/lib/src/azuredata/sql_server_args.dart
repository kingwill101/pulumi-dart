// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredata_sql_server_args_doc}
/// The set of arguments for SqlServer.
/// {@endtemplate}
/// {@macro pulumi_azuredata_sql_server_args_doc}
class SqlServerArgs {
  /// Cores of the Sql Server.
  final pulumi.Input<int>? cores;
  /// Sql Server Edition.
  final pulumi.Input<String>? edition;
  /// Sql Server Json Property Bag.
  final pulumi.Input<String>? propertyBag;
  /// ID for Parent Sql Server Registration.
  final pulumi.Input<String>? registrationID;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL Server.
  final pulumi.Input<String>? sqlServerName;
  /// Name of the SQL Server registration.
  final pulumi.Input<String> sqlServerRegistrationName;
  /// Version of the Sql Server.
  final pulumi.Input<String>? version;

  /// Creates a new [SqlServerArgs].
  /// [cores] Cores of the Sql Server.
  /// [edition] Sql Server Edition.
  /// [propertyBag] Sql Server Json Property Bag.
  /// [registrationID] ID for Parent Sql Server Registration.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sqlServerName] Name of the SQL Server.
  /// [sqlServerRegistrationName] Name of the SQL Server registration.
  /// [version] Version of the Sql Server.
  SqlServerArgs({
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
      cores: map['cores'] == null ? null : (map['cores']! as int).input(),
      edition: map['edition'] == null ? null : (map['edition']! as String).input(),
      propertyBag: map['propertyBag'] == null ? null : (map['propertyBag']! as String).input(),
      registrationID: map['registrationID'] == null ? null : (map['registrationID']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sqlServerName: map['sqlServerName'] == null ? null : (map['sqlServerName']! as String).input(),
      sqlServerRegistrationName: (map['sqlServerRegistrationName'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

