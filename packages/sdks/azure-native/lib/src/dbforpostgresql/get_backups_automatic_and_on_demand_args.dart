// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_backups_automatic_and_on_demand_args_doc}
/// Arguments for getBackupsAutomaticAndOnDemand.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_backups_automatic_and_on_demand_args_doc}
class GetBackupsAutomaticAndOnDemandArgs {
  /// Name of the backup.
  final pulumi.Input<String> backupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetBackupsAutomaticAndOnDemandArgs].
  /// [backupName] Name of the backup.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  GetBackupsAutomaticAndOnDemandArgs({
    required pulumi.Output<String> backupName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      backupName = pulumi.Input.asInput<String>(backupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': backupName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetBackupsAutomaticAndOnDemandArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupsAutomaticAndOnDemandArgs(
      backupName: pulumi.Output.create<String>(map['backupName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

