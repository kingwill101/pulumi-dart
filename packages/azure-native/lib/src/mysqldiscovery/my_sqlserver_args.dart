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
    String? edition,
    List<Error>? errors,
    List<String>? hostIp,
    required String hostName,
    Map<String, String>? labels,
    String? machineId,
    String? mysqlVersion,
    double? numberOfDatabase,
    required String portNumber,
    String? provisioningState,
    required String resourceGroupName,
    String? serverName,
    required String siteName,
    String? supportEndIn,
    String? supportStatus,
    Map<String, String>? tags,
  }) :
      edition = pulumi.Input.asOptionalInput<String>(edition),
      errors = pulumi.Input.asOptionalInput<List<Error>>(errors),
      hostIp = pulumi.Input.asOptionalInput<List<String>>(hostIp),
      hostName = pulumi.Input.asInput<String>(hostName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      machineId = pulumi.Input.asOptionalInput<String>(machineId),
      mysqlVersion = pulumi.Input.asOptionalInput<String>(mysqlVersion),
      numberOfDatabase = pulumi.Input.asOptionalInput<double>(numberOfDatabase),
      portNumber = pulumi.Input.asInput<String>(portNumber),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      siteName = pulumi.Input.asInput<String>(siteName),
      supportEndIn = pulumi.Input.asOptionalInput<String>(supportEndIn),
      supportStatus = pulumi.Input.asOptionalInput<String>(supportStatus),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      edition: map['edition'] == null ? null : map['edition'] as String,
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<Error>(map['errors'], (value) => Error.fromMap((value as Map).cast<String, dynamic>())),
      hostIp: map['hostIp'] == null ? null : (map['hostIp'] as List).cast<String>(),
      hostName: map['hostName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      machineId: map['machineId'] == null ? null : map['machineId'] as String,
      mysqlVersion: map['mysqlVersion'] == null ? null : map['mysqlVersion'] as String,
      numberOfDatabase: map['numberOfDatabase'] == null ? null : map['numberOfDatabase'] as double,
      portNumber: map['portNumber'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] == null ? null : map['serverName'] as String,
      siteName: map['siteName'] as String,
      supportEndIn: map['supportEndIn'] == null ? null : map['supportEndIn'] as String,
      supportStatus: map['supportStatus'] == null ? null : map['supportStatus'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

