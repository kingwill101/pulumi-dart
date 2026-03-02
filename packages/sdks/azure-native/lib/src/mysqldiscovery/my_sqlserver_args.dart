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
  MySQLServerArgs({
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
      edition: map['edition'] == null ? null : (map['edition'] as String).input(),
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<Error>(map['errors'], (value) => Error.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostIp: map['hostIp'] == null ? null : ((map['hostIp'] as List).cast<String>()).input(),
      hostName: (map['hostName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      machineId: map['machineId'] == null ? null : (map['machineId'] as String).input(),
      mysqlVersion: map['mysqlVersion'] == null ? null : (map['mysqlVersion'] as String).input(),
      numberOfDatabase: map['numberOfDatabase'] == null ? null : (map['numberOfDatabase'] as double).input(),
      portNumber: (map['portNumber'] as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: map['serverName'] == null ? null : (map['serverName'] as String).input(),
      siteName: (map['siteName'] as String).input(),
      supportEndIn: map['supportEndIn'] == null ? null : (map['supportEndIn'] as String).input(),
      supportStatus: map['supportStatus'] == null ? null : (map['supportStatus'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

