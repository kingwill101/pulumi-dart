// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getHybridRunbookWorker.
class GetHybridRunbookWorkerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource Id for the resource
  final String id;
  /// Gets or sets the assigned machine IP address.
  final String? ip;
  /// Last Heartbeat from the Worker
  final String? lastSeenDateTime;
  /// The name of the resource
  final String name;
  /// Gets or sets the registration time of the worker machine.
  final String? registeredDateTime;
  /// Resource system metadata.
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;
  /// Azure Resource Manager Id for a virtual machine.
  final String? vmResourceId;
  /// Name of the HybridWorker.
  final String? workerName;
  /// Type of the HybridWorker.
  final String? workerType;

  /// Creates a new [GetHybridRunbookWorkerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource
  /// [ip] Gets or sets the assigned machine IP address.
  /// [lastSeenDateTime] Last Heartbeat from the Worker
  /// [name] The name of the resource
  /// [registeredDateTime] Gets or sets the registration time of the worker machine.
  /// [systemData] Resource system metadata.
  /// [type] The type of the resource.
  /// [vmResourceId] Azure Resource Manager Id for a virtual machine.
  /// [workerName] Name of the HybridWorker.
  /// [workerType] Type of the HybridWorker.
  GetHybridRunbookWorkerResult({
    required this.azureApiVersion,
    required this.id,
    this.ip,
    this.lastSeenDateTime,
    required this.name,
    this.registeredDateTime,
    required this.systemData,
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
      'name': name,
      'registeredDateTime': ?registeredDateTime,
      'systemData': systemData.toMap(),
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
      ip: map['ip'] == null ? null : map['ip']! as String,
      lastSeenDateTime: map['lastSeenDateTime'] == null ? null : map['lastSeenDateTime']! as String,
      name: map['name'] as String,
      registeredDateTime: map['registeredDateTime'] == null ? null : map['registeredDateTime']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      vmResourceId: map['vmResourceId'] == null ? null : map['vmResourceId']! as String,
      workerName: map['workerName'] == null ? null : map['workerName']! as String,
      workerType: map['workerType'] == null ? null : map['workerType']! as String,
    );
  }
}

