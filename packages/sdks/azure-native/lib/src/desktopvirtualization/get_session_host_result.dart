// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_host_health_check_report_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSessionHost.
class GetSessionHostResult {
  /// Number of active sessions on SessionHost.
  final int activeSessions;
  /// Version of agent on SessionHost.
  final String agentVersion;
  /// Allow a new session.
  final bool? allowNewSession;
  /// User assigned to SessionHost.
  final String? assignedUser;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Number of disconnected sessions on SessionHost.
  final int disconnectedSessions;
  /// Friendly name of SessionHost
  final String? friendlyName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Last heart beat from SessionHost.
  final String lastHeartBeat;
  /// The last time update was completed.
  final String lastSessionHostUpdateTime;
  /// The timestamp of the last update.
  final String lastUpdateTime;
  /// The name of the resource
  final String name;
  /// ObjectId of SessionHost. (internal use)
  final String objectId;
  /// The version of the OS on the session host.
  final String osVersion;
  /// Number of pending sessions on SessionHost.
  final int pendingSessions;
  /// Resource Id of SessionHost's underlying virtual machine.
  final String resourceId;
  /// SessionHostConfiguration version reference at the time the update is initiated, in the format of date time. Example: 2024-04-26T04:56:45Z
  final String sessionHostConfiguration;
  /// List of SessionHostHealthCheckReports
  final List<SessionHostHealthCheckReportResponse> sessionHostHealthCheckResults;
  /// Number of sessions on SessionHost.
  final int sessions;
  /// Status for a SessionHost.
  final String status;
  /// The timestamp of the status.
  final String statusTimestamp;
  /// The version of the side by side stack on the session host.
  final String sxSStackVersion;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The error message.
  final String updateErrorMessage;
  /// Update state of a SessionHost.
  final String updateState;
  /// Virtual Machine Id of SessionHost's underlying virtual machine.
  final String virtualMachineId;

  /// Creates a new [GetSessionHostResult].
  /// [activeSessions] Number of active sessions on SessionHost.
  /// [agentVersion] Version of agent on SessionHost.
  /// [allowNewSession] Allow a new session.
  /// [assignedUser] User assigned to SessionHost.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disconnectedSessions] Number of disconnected sessions on SessionHost.
  /// [friendlyName] Friendly name of SessionHost
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastHeartBeat] Last heart beat from SessionHost.
  /// [lastSessionHostUpdateTime] The last time update was completed.
  /// [lastUpdateTime] The timestamp of the last update.
  /// [name] The name of the resource
  /// [objectId] ObjectId of SessionHost. (internal use)
  /// [osVersion] The version of the OS on the session host.
  /// [pendingSessions] Number of pending sessions on SessionHost.
  /// [resourceId] Resource Id of SessionHost's underlying virtual machine.
  /// [sessionHostConfiguration] SessionHostConfiguration version reference at the time the update is initiated, in the format of date time. Example: 2024-04-26T04:56:45Z
  /// [sessionHostHealthCheckResults] List of SessionHostHealthCheckReports
  /// [sessions] Number of sessions on SessionHost.
  /// [status] Status for a SessionHost.
  /// [statusTimestamp] The timestamp of the status.
  /// [sxSStackVersion] The version of the side by side stack on the session host.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updateErrorMessage] The error message.
  /// [updateState] Update state of a SessionHost.
  /// [virtualMachineId] Virtual Machine Id of SessionHost's underlying virtual machine.
  const GetSessionHostResult({
    required this.activeSessions,
    required this.agentVersion,
    this.allowNewSession,
    this.assignedUser,
    required this.azureApiVersion,
    required this.disconnectedSessions,
    this.friendlyName,
    required this.id,
    required this.lastHeartBeat,
    required this.lastSessionHostUpdateTime,
    required this.lastUpdateTime,
    required this.name,
    required this.objectId,
    required this.osVersion,
    required this.pendingSessions,
    required this.resourceId,
    required this.sessionHostConfiguration,
    required this.sessionHostHealthCheckResults,
    required this.sessions,
    required this.status,
    required this.statusTimestamp,
    required this.sxSStackVersion,
    required this.systemData,
    required this.type,
    required this.updateErrorMessage,
    required this.updateState,
    required this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeSessions': activeSessions,
      'agentVersion': agentVersion,
      'allowNewSession': ?allowNewSession,
      'assignedUser': ?assignedUser,
      'azureApiVersion': azureApiVersion,
      'disconnectedSessions': disconnectedSessions,
      'friendlyName': ?friendlyName,
      'id': id,
      'lastHeartBeat': lastHeartBeat,
      'lastSessionHostUpdateTime': lastSessionHostUpdateTime,
      'lastUpdateTime': lastUpdateTime,
      'name': name,
      'objectId': objectId,
      'osVersion': osVersion,
      'pendingSessions': pendingSessions,
      'resourceId': resourceId,
      'sessionHostConfiguration': sessionHostConfiguration,
      'sessionHostHealthCheckResults': pulumi.Input.encodeList<SessionHostHealthCheckReportResponse, Map<String, dynamic>>(sessionHostHealthCheckResults, (value) => value.toMap()),
      'sessions': sessions,
      'status': status,
      'statusTimestamp': statusTimestamp,
      'sxSStackVersion': sxSStackVersion,
      'systemData': systemData.toMap(),
      'type': type,
      'updateErrorMessage': updateErrorMessage,
      'updateState': updateState,
      'virtualMachineId': virtualMachineId,
    };
  }

  factory GetSessionHostResult.fromMap(Map<String, dynamic> map) {
    return GetSessionHostResult(
      activeSessions: map['activeSessions'] as int,
      agentVersion: map['agentVersion'] as String,
      allowNewSession: (() { final guardedValue = map['allowNewSession']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      assignedUser: (() { final guardedValue = map['assignedUser']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      disconnectedSessions: map['disconnectedSessions'] as int,
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      lastHeartBeat: map['lastHeartBeat'] as String,
      lastSessionHostUpdateTime: map['lastSessionHostUpdateTime'] as String,
      lastUpdateTime: map['lastUpdateTime'] as String,
      name: map['name'] as String,
      objectId: map['objectId'] as String,
      osVersion: map['osVersion'] as String,
      pendingSessions: map['pendingSessions'] as int,
      resourceId: map['resourceId'] as String,
      sessionHostConfiguration: map['sessionHostConfiguration'] as String,
      sessionHostHealthCheckResults: pulumi.Input.decodeList<SessionHostHealthCheckReportResponse>(map['sessionHostHealthCheckResults']!, (value) => SessionHostHealthCheckReportResponse.fromMap((value as Map).cast<String, dynamic>())),
      sessions: map['sessions'] as int,
      status: map['status'] as String,
      statusTimestamp: map['statusTimestamp'] as String,
      sxSStackVersion: map['sxSStackVersion'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updateErrorMessage: map['updateErrorMessage'] as String,
      updateState: map['updateState'] as String,
      virtualMachineId: map['virtualMachineId'] as String,
    );
  }
}
