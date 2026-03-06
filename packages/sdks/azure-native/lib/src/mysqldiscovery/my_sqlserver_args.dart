// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error.dart';

/// {@template pulumi_mysqldiscovery_my_sqlserver_args_doc}
/// The set of arguments for MySQLServer.
/// {@endtemplate}
/// {@macro pulumi_mysqldiscovery_my_sqlserver_args_doc}
class MySQLServerArgs {
  /// mysql server edition.
  final pulumi.Input<String>? edition;
  /// The list of errors.
  final pulumi.Input<List<Error>>? errors;
  /// The Server IP/host name.
  final pulumi.Input<List<String>>? hostIp;
  /// The Server IP/host name.
  final pulumi.Input<String> hostName;
  /// Resource labels.
  final pulumi.Input<Map<String, String>>? labels;
  /// discovery Machine Id
  final pulumi.Input<String>? machineId;
  /// The mysql server version.
  final pulumi.Input<String>? mysqlVersion;
  /// The number of database.
  final pulumi.Input<double>? numberOfDatabase;
  /// MySQL Server port number
  final pulumi.Input<String> portNumber;
  /// Gets or sets the provisioning state.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Server
  final pulumi.Input<String>? serverName;
  /// The name of Site
  final pulumi.Input<String> siteName;
  /// Time when mysql version support end.
  final pulumi.Input<String>? supportEndIn;
  /// mysql version support status.
  final pulumi.Input<String>? supportStatus;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MySQLServerArgs].
  /// [edition] mysql server edition.
  /// [errors] The list of errors.
  /// [hostIp] The Server IP/host name.
  /// [hostName] The Server IP/host name.
  /// [labels] Resource labels.
  /// [machineId] discovery Machine Id
  /// [mysqlVersion] The mysql server version.
  /// [numberOfDatabase] The number of database.
  /// [portNumber] MySQL Server port number
  /// [provisioningState] Gets or sets the provisioning state.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of Server
  /// [siteName] The name of Site
  /// [supportEndIn] Time when mysql version support end.
  /// [supportStatus] mysql version support status.
  /// [tags] Resource tags
  const MySQLServerArgs({
    this.edition,
    this.errors,
    this.hostIp,
    required this.hostName,
    this.labels,
    this.machineId,
    this.mysqlVersion,
    this.numberOfDatabase,
    required this.portNumber,
    this.provisioningState,
    required this.resourceGroupName,
    this.serverName,
    required this.siteName,
    this.supportEndIn,
    this.supportStatus,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edition': ?edition,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<Error>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<Error, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostIp': ?hostIp,
      'hostName': hostName,
      'labels': ?labels,
      'machineId': ?machineId,
      'mysqlVersion': ?mysqlVersion,
      'numberOfDatabase': ?numberOfDatabase,
      'portNumber': portNumber,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'serverName': ?serverName,
      'siteName': siteName,
      'supportEndIn': ?supportEndIn,
      'supportStatus': ?supportStatus,
      'tags': ?tags,
    };
  }

  factory MySQLServerArgs.fromMap(Map<String, dynamic> map) {
    return MySQLServerArgs(
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Error>(guardedValue, (value) => Error.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostIp: (() { final guardedValue = map['hostIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      machineId: (() { final guardedValue = map['machineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mysqlVersion: (() { final guardedValue = map['mysqlVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfDatabase: (() { final guardedValue = map['numberOfDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      portNumber: pulumi.Input.fromValue(map['portNumber'] as String),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
      supportEndIn: (() { final guardedValue = map['supportEndIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportStatus: (() { final guardedValue = map['supportStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

