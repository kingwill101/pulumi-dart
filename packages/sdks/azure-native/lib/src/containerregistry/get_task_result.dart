// ignore_for_file: unused_element, unnecessary_cast

import 'agent_properties_response.dart';
import 'credentials_response.dart';
import 'identity_properties_response.dart';
import 'platform_properties_response.dart';
import 'system_data_response.dart';
import 'trigger_properties_response.dart';

/// Result data returned by getTask.
class GetTaskResult {
  /// The machine configuration of the run agent.
  final AgentPropertiesResponse? agentConfiguration;
  /// The dedicated agent pool for the task.
  final String? agentPoolName;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The creation date of task.
  final String? creationDate;
  /// The properties that describes a set of credentials that will be used when this run is invoked.
  final CredentialsResponse? credentials;
  /// The resource ID.
  final String? id;
  /// Identity for the resource.
  final IdentityPropertiesResponse? identity;
  /// The value of this property indicates whether the task resource is system task or not.
  final bool? isSystemTask;
  /// The location of the resource. This cannot be changed after the resource is created.
  final String? location;
  /// The template that describes the repository and tag information for run log artifact.
  final String? logTemplate;
  /// The name of the resource.
  final String? name;
  /// The platform properties against which the run has to happen.
  final PlatformPropertiesResponse? platform;
  /// The provisioning state of the task.
  final String? provisioningState;
  /// The current status of task.
  final String? status;
  /// The properties of a task step.
  final dynamic step;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// Run timeout in seconds.
  final int? timeout;
  /// The properties that describe all triggers for the task.
  final TriggerPropertiesResponse? trigger;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetTaskResult].
  /// [agentConfiguration] The machine configuration of the run agent.
  /// [agentPoolName] The dedicated agent pool for the task.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The creation date of task.
  /// [credentials] The properties that describes a set of credentials that will be used when this run is invoked.
  /// [id] The resource ID.
  /// [identity] Identity for the resource.
  /// [isSystemTask] The value of this property indicates whether the task resource is system task or not.
  /// [location] The location of the resource. This cannot be changed after the resource is created.
  /// [logTemplate] The template that describes the repository and tag information for run log artifact.
  /// [name] The name of the resource.
  /// [platform] The platform properties against which the run has to happen.
  /// [provisioningState] The provisioning state of the task.
  /// [status] The current status of task.
  /// [step] The properties of a task step.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] The tags of the resource.
  /// [timeout] Run timeout in seconds.
  /// [trigger] The properties that describe all triggers for the task.
  /// [type] The type of the resource.
  GetTaskResult({
    this.agentConfiguration,
    this.agentPoolName,
    this.azureApiVersion,
    this.creationDate,
    this.credentials,
    this.id,
    this.identity,
    bool? isSystemTask,
    this.location,
    this.logTemplate,
    this.name,
    this.platform,
    this.provisioningState,
    this.status,
    this.step,
    this.systemData,
    this.tags,
    int? timeout,
    this.trigger,
    this.type,
  }) : isSystemTask = isSystemTask ?? false, timeout = timeout ?? 3600;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentConfiguration': ?agentConfiguration?.toMap(),
      'agentPoolName': ?agentPoolName,
      'azureApiVersion': ?azureApiVersion,
      'creationDate': ?creationDate,
      'credentials': ?credentials?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'isSystemTask': ?isSystemTask,
      'location': ?location,
      'logTemplate': ?logTemplate,
      'name': ?name,
      'platform': ?platform?.toMap(),
      'provisioningState': ?provisioningState,
      'status': ?status,
      'step': ?step,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'timeout': ?timeout,
      'trigger': ?trigger?.toMap(),
      'type': ?type,
    };
  }

  factory GetTaskResult.fromMap(Map<String, dynamic> map) {
    return GetTaskResult(
      agentConfiguration: (() { final guardedValue = map['agentConfiguration']; if (guardedValue == null) return null; return AgentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      agentPoolName: (() { final guardedValue = map['agentPoolName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return CredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      isSystemTask: (() { final guardedValue = map['isSystemTask']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logTemplate: (() { final guardedValue = map['logTemplate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return PlatformPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      step: (() { final guardedValue = map['step']; if (guardedValue == null) return null; return guardedValue; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      trigger: (() { final guardedValue = map['trigger']; if (guardedValue == null) return null; return TriggerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
