// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_host_health_check_report_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSessionHost.
class GetSessionHostResult {
  /// Number of active sessions on SessionHost.
  final int? activeSessions;
  /// Version of agent on SessionHost.
  final String? agentVersion;
  /// Allow a new session.
  final bool? allowNewSession;
  /// User assigned to SessionHost.
  final String? assignedUser;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Number of disconnected sessions on SessionHost.
  final int? disconnectedSessions;
  /// Friendly name of SessionHost
  final String? friendlyName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Last heart beat from SessionHost.
  final String? lastHeartBeat;
  /// The last time update was completed.
  final String? lastSessionHostUpdateTime;
  /// The timestamp of the last update.
  final String? lastUpdateTime;
  /// The name of the resource
  final String? name;
  /// ObjectId of SessionHost. (internal use)
  final String? objectId;
  /// The version of the OS on the session host.
  final String? osVersion;
  /// Number of pending sessions on SessionHost.
  final int? pendingSessions;
  /// Resource Id of SessionHost's underlying virtual machine.
  final String? resourceId;
  /// SessionHostConfiguration version reference at the time the update is initiated, in the format of date time. Example: 2024-04-26T04:56:45Z
  final String? sessionHostConfiguration;
  /// List of SessionHostHealthCheckReports
  final List<SessionHostHealthCheckReportResponse>? sessionHostHealthCheckResults;
  /// Number of sessions on SessionHost.
  final int? sessions;
  /// Status for a SessionHost.
  final String? status;
  /// The timestamp of the status.
  final String? statusTimestamp;
  /// The version of the side by side stack on the session host.
  final String? sxSStackVersion;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The error message.
  final String? updateErrorMessage;
  /// Update state of a SessionHost.
  final String? updateState;
  /// Virtual Machine Id of SessionHost's underlying virtual machine.
  final String? virtualMachineId;

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
    this.activeSessions,
    this.agentVersion,
    this.allowNewSession,
    this.assignedUser,
    this.azureApiVersion,
    this.disconnectedSessions,
    this.friendlyName,
    this.id,
    this.lastHeartBeat,
    this.lastSessionHostUpdateTime,
    this.lastUpdateTime,
    this.name,
    this.objectId,
    this.osVersion,
    this.pendingSessions,
    this.resourceId,
    this.sessionHostConfiguration,
    this.sessionHostHealthCheckResults,
    this.sessions,
    this.status,
    this.statusTimestamp,
    this.sxSStackVersion,
    this.systemData,
    this.type,
    this.updateErrorMessage,
    this.updateState,
    this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeSessions': ?activeSessions,
      'agentVersion': ?agentVersion,
      'allowNewSession': ?allowNewSession,
      'assignedUser': ?assignedUser,
      'azureApiVersion': ?azureApiVersion,
      'disconnectedSessions': ?disconnectedSessions,
      'friendlyName': ?friendlyName,
      'id': ?id,
      'lastHeartBeat': ?lastHeartBeat,
      'lastSessionHostUpdateTime': ?lastSessionHostUpdateTime,
      'lastUpdateTime': ?lastUpdateTime,
      'name': ?name,
      'objectId': ?objectId,
      'osVersion': ?osVersion,
      'pendingSessions': ?pendingSessions,
      'resourceId': ?resourceId,
      'sessionHostConfiguration': ?sessionHostConfiguration,
      'sessionHostHealthCheckResults': ?(() { final guardedValue = sessionHostHealthCheckResults; if (guardedValue == null) return null; return pulumi.Input.encodeList<SessionHostHealthCheckReportResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sessions': ?sessions,
      'status': ?status,
      'statusTimestamp': ?statusTimestamp,
      'sxSStackVersion': ?sxSStackVersion,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'updateErrorMessage': ?updateErrorMessage,
      'updateState': ?updateState,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory GetSessionHostResult.fromMap(Map<String, dynamic> map) {
    return GetSessionHostResult(
      activeSessions: (() { final guardedValue = map['activeSessions']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowNewSession: (() { final guardedValue = map['allowNewSession']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      assignedUser: (() { final guardedValue = map['assignedUser']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disconnectedSessions: (() { final guardedValue = map['disconnectedSessions']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastHeartBeat: (() { final guardedValue = map['lastHeartBeat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSessionHostUpdateTime: (() { final guardedValue = map['lastSessionHostUpdateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdateTime: (() { final guardedValue = map['lastUpdateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pendingSessions: (() { final guardedValue = map['pendingSessions']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sessionHostConfiguration: (() { final guardedValue = map['sessionHostConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sessionHostHealthCheckResults: (() { final guardedValue = map['sessionHostHealthCheckResults']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SessionHostHealthCheckReportResponse>(guardedValue, (value) => SessionHostHealthCheckReportResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sessions: (() { final guardedValue = map['sessions']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusTimestamp: (() { final guardedValue = map['statusTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sxSStackVersion: (() { final guardedValue = map['sxSStackVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateErrorMessage: (() { final guardedValue = map['updateErrorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateState: (() { final guardedValue = map['updateState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachineId: (() { final guardedValue = map['virtualMachineId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
