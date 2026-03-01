// ignore_for_file: unused_element, unnecessary_cast

import 'agent_properties_response.dart';
import 'credentials_response.dart';
import 'docker_build_step_response.dart';
import 'identity_properties_response.dart';
import 'platform_properties_response.dart';
import 'system_data_response.dart';
import 'trigger_properties_response.dart';

/// Result data returned by listTaskDetails.
class ListTaskDetailsResult {
  /// The machine configuration of the run agent.
  final AgentPropertiesResponse? agentConfiguration;
  /// The dedicated agent pool for the task.
  final String? agentPoolName;
  /// The creation date of task.
  final String creationDate;
  /// The properties that describes a set of credentials that will be used when this run is invoked.
  final CredentialsResponse? credentials;
  /// The resource ID.
  final String id;
  /// Identity for the resource.
  final IdentityPropertiesResponse? identity;
  /// The value of this property indicates whether the task resource is system task or not.
  final bool? isSystemTask;
  /// The location of the resource. This cannot be changed after the resource is created.
  final String location;
  /// The template that describes the repository and tag information for run log artifact.
  final String? logTemplate;
  /// The name of the resource.
  final String name;
  /// The platform properties against which the run has to happen.
  final PlatformPropertiesResponse? platform;
  /// The provisioning state of the task.
  final String provisioningState;
  /// The current status of task.
  final String? status;
  /// The properties of a task step.
  final DockerBuildStepResponse? step;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// Run timeout in seconds.
  final int? timeout;
  /// The properties that describe all triggers for the task.
  final TriggerPropertiesResponse? trigger;
  /// The type of the resource.
  final String type;

  /// Creates a new [ListTaskDetailsResult].
  /// [agentConfiguration] The machine configuration of the run agent.
  /// [agentPoolName] The dedicated agent pool for the task.
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
  ListTaskDetailsResult({
    this.agentConfiguration,
    this.agentPoolName,
    required this.creationDate,
    this.credentials,
    required this.id,
    this.identity,
    this.isSystemTask,
    required this.location,
    this.logTemplate,
    required this.name,
    this.platform,
    required this.provisioningState,
    this.status,
    this.step,
    required this.systemData,
    this.tags,
    this.timeout,
    this.trigger,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentConfiguration': ?agentConfiguration == null ? null : agentConfiguration!.toMap(),
      'agentPoolName': ?agentPoolName,
      'creationDate': creationDate,
      'credentials': ?credentials == null ? null : credentials!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'isSystemTask': ?isSystemTask,
      'location': location,
      'logTemplate': ?logTemplate,
      'name': name,
      'platform': ?platform == null ? null : platform!.toMap(),
      'provisioningState': provisioningState,
      'status': ?status,
      'step': ?step == null ? null : step!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeout': ?timeout,
      'trigger': ?trigger == null ? null : trigger!.toMap(),
      'type': type,
    };
  }

  factory ListTaskDetailsResult.fromMap(Map<String, dynamic> map) {
    return ListTaskDetailsResult(
      agentConfiguration: map['agentConfiguration'] == null ? null : AgentPropertiesResponse.fromMap((map['agentConfiguration'] as Map).cast<String, dynamic>()),
      agentPoolName: map['agentPoolName'] == null ? null : map['agentPoolName'] as String,
      creationDate: map['creationDate'] as String,
      credentials: map['credentials'] == null ? null : CredentialsResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityPropertiesResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      isSystemTask: map['isSystemTask'] == null ? null : map['isSystemTask'] as bool,
      location: map['location'] as String,
      logTemplate: map['logTemplate'] == null ? null : map['logTemplate'] as String,
      name: map['name'] as String,
      platform: map['platform'] == null ? null : PlatformPropertiesResponse.fromMap((map['platform'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      step: map['step'] == null ? null : DockerBuildStepResponse.fromMap((map['step'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      trigger: map['trigger'] == null ? null : TriggerPropertiesResponse.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

