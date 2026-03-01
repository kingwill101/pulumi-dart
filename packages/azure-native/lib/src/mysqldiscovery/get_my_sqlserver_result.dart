// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMySQLServer.
class GetMySQLServerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// mysql server edition.
  final String? edition;
  /// The list of errors.
  final List<ErrorResponse>? errors;
  /// The Server IP/host name.
  final List<String>? hostIp;
  /// The Server IP/host name.
  final String hostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Resource labels.
  final Map<String, String>? labels;
  /// discovery Machine Id
  final String? machineId;
  /// The mysql server version.
  final String? mysqlVersion;
  /// The name of the resource
  final String name;
  /// The number of database.
  final double? numberOfDatabase;
  /// MySQL Server port number
  final String portNumber;
  /// Gets or sets the provisioning state.
  final String? provisioningState;
  /// Time when mysql version support end.
  final String? supportEndIn;
  /// mysql version support status.
  final String? supportStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetMySQLServerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [edition] mysql server edition.
  /// [errors] The list of errors.
  /// [hostIp] The Server IP/host name.
  /// [hostName] The Server IP/host name.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [labels] Resource labels.
  /// [machineId] discovery Machine Id
  /// [mysqlVersion] The mysql server version.
  /// [name] The name of the resource
  /// [numberOfDatabase] The number of database.
  /// [portNumber] MySQL Server port number
  /// [provisioningState] Gets or sets the provisioning state.
  /// [supportEndIn] Time when mysql version support end.
  /// [supportStatus] mysql version support status.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetMySQLServerResult({
    required this.azureApiVersion,
    this.edition,
    this.errors,
    this.hostIp,
    required this.hostName,
    required this.id,
    this.labels,
    this.machineId,
    this.mysqlVersion,
    required this.name,
    this.numberOfDatabase,
    required this.portNumber,
    this.provisioningState,
    this.supportEndIn,
    this.supportStatus,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'edition': ?edition,
      'errors': ?errors == null ? null : pulumi.Input.encodeList<ErrorResponse, Map<String, dynamic>>(errors!, (value) => value.toMap()),
      'hostIp': ?hostIp,
      'hostName': hostName,
      'id': id,
      'labels': ?labels,
      'machineId': ?machineId,
      'mysqlVersion': ?mysqlVersion,
      'name': name,
      'numberOfDatabase': ?numberOfDatabase,
      'portNumber': portNumber,
      'provisioningState': ?provisioningState,
      'supportEndIn': ?supportEndIn,
      'supportStatus': ?supportStatus,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMySQLServerResult.fromMap(Map<String, dynamic> map) {
    return GetMySQLServerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      edition: map['edition'] == null ? null : map['edition'] as String,
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<ErrorResponse>(map['errors'], (value) => ErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      hostIp: map['hostIp'] == null ? null : (map['hostIp'] as List).cast<String>(),
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      machineId: map['machineId'] == null ? null : map['machineId'] as String,
      mysqlVersion: map['mysqlVersion'] == null ? null : map['mysqlVersion'] as String,
      name: map['name'] as String,
      numberOfDatabase: map['numberOfDatabase'] == null ? null : map['numberOfDatabase'] as double,
      portNumber: map['portNumber'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      supportEndIn: map['supportEndIn'] == null ? null : map['supportEndIn'] as String,
      supportStatus: map['supportStatus'] == null ? null : map['supportStatus'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

