// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_backups_automatic_and_on_demand_args_doc}
/// The set of arguments for BackupsAutomaticAndOnDemand.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_backups_automatic_and_on_demand_args_doc}
class BackupsAutomaticAndOnDemandArgs {
  /// Name of the backup.
  final pulumi.Input<String?>? backupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [BackupsAutomaticAndOnDemandArgs].
  /// [backupName] Name of the backup.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  const BackupsAutomaticAndOnDemandArgs({
    this.backupName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': ?backupName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory BackupsAutomaticAndOnDemandArgs.fromMap(Map<String, dynamic> map) {
    return BackupsAutomaticAndOnDemandArgs(
      backupName: (() { final guardedValue = map['backupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
