// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getHybridRunbookWorker.
class GetHybridRunbookWorkerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Gets or sets the assigned machine IP address.
  final String? ip;
  /// Last Heartbeat from the Worker
  final String? lastSeenDateTime;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Gets or sets the registration time of the worker machine.
  final String? registeredDateTime;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Azure Resource Manager Id for a virtual machine.
  final String? vmResourceId;
  /// Name of the HybridWorker.
  final String? workerName;
  /// Type of the HybridWorker.
  final String? workerType;

  /// Creates a new [GetHybridRunbookWorkerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [ip] Gets or sets the assigned machine IP address.
  /// [lastSeenDateTime] Last Heartbeat from the Worker
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [registeredDateTime] Gets or sets the registration time of the worker machine.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vmResourceId] Azure Resource Manager Id for a virtual machine.
  /// [workerName] Name of the HybridWorker.
  /// [workerType] Type of the HybridWorker.
  const GetHybridRunbookWorkerResult({
    required this.azureApiVersion,
    required this.id,
    this.ip,
    this.lastSeenDateTime,
    required this.location,
    required this.name,
    this.registeredDateTime,
    required this.systemData,
    this.tags,
    required this.type,
    this.vmResourceId,
    this.workerName,
    this.workerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'ip': ?ip,
      'lastSeenDateTime': ?lastSeenDateTime,
      'location': location,
      'name': name,
      'registeredDateTime': ?registeredDateTime,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vmResourceId': ?vmResourceId,
      'workerName': ?workerName,
      'workerType': ?workerType,
    };
  }

  factory GetHybridRunbookWorkerResult.fromMap(Map<String, dynamic> map) {
    return GetHybridRunbookWorkerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSeenDateTime: (() { final guardedValue = map['lastSeenDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      registeredDateTime: (() { final guardedValue = map['registeredDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      vmResourceId: (() { final guardedValue = map['vmResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workerName: (() { final guardedValue = map['workerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workerType: (() { final guardedValue = map['workerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
