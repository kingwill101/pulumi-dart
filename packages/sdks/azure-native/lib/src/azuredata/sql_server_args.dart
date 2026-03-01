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
    pulumi.Output<int>? cores,
    pulumi.Output<String>? edition,
    pulumi.Output<String>? propertyBag,
    pulumi.Output<String>? registrationID,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sqlServerName,
    required pulumi.Output<String> sqlServerRegistrationName,
    pulumi.Output<String>? version,
  }) :
      cores = pulumi.Input.asOptionalInput<int>(cores),
      edition = pulumi.Input.asOptionalInput<String>(edition),
      propertyBag = pulumi.Input.asOptionalInput<String>(propertyBag),
      registrationID = pulumi.Input.asOptionalInput<String>(registrationID),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlServerName = pulumi.Input.asOptionalInput<String>(sqlServerName),
      sqlServerRegistrationName = pulumi.Input.asInput<String>(sqlServerRegistrationName),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      cores: map['cores'] == null ? null : pulumi.Output.create<int>(map['cores'] as int),
      edition: map['edition'] == null ? null : pulumi.Output.create<String>(map['edition'] as String),
      propertyBag: map['propertyBag'] == null ? null : pulumi.Output.create<String>(map['propertyBag'] as String),
      registrationID: map['registrationID'] == null ? null : pulumi.Output.create<String>(map['registrationID'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlServerName: map['sqlServerName'] == null ? null : pulumi.Output.create<String>(map['sqlServerName'] as String),
      sqlServerRegistrationName: pulumi.Output.create<String>(map['sqlServerRegistrationName'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

