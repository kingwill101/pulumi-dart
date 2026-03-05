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
      'errors': ?(() { final guardedValue = errors; if (guardedValue == null) return null; return pulumi.Input.encodeList<ErrorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ErrorResponse>(guardedValue, (value) => ErrorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      hostIp: (() { final guardedValue = map['hostIp']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      machineId: (() { final guardedValue = map['machineId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mysqlVersion: (() { final guardedValue = map['mysqlVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      numberOfDatabase: (() { final guardedValue = map['numberOfDatabase']; if (guardedValue == null) return null; return guardedValue as double; })(),
      portNumber: map['portNumber'] as String,
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportEndIn: (() { final guardedValue = map['supportEndIn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportStatus: (() { final guardedValue = map['supportStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

