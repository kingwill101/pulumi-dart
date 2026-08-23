// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_configuration_response.dart';
import 'agent_identity_response.dart';
import 'default_model_response.dart';
import 'incident_management_configuration_response.dart';
import 'knowledge_graph_configuration_response.dart';
import 'log_configuration_response.dart';

/// Properties of the Agent
class AgentPropertiesResponse {
  /// Configuration for action
  final pulumi.Input<ActionConfigurationResponse>? actionConfiguration;
  /// The endpoint of the Agent
  final pulumi.Input<String> agentEndpoint;
  /// Agent identity configuration for accessing resources
  final pulumi.Input<AgentIdentityResponse>? agentIdentity;
  /// The agent space ID referenced by the agent
  final pulumi.Input<String>? agentSpaceId;
  /// Default AI model configuration for the agent
  final pulumi.Input<DefaultModelResponse>? defaultModel;
  /// Incident management configurations
  final pulumi.Input<IncidentManagementConfigurationResponse>? incidentManagementConfiguration;
  /// Knowledge graph configuration for agent
  final pulumi.Input<KnowledgeGraphConfigurationResponse>? knowledgeGraphConfiguration;
  /// Log configurations
  final pulumi.Input<LogConfigurationResponse>? logConfiguration;
  /// The power state of the Agent
  final pulumi.Input<String> powerState;
  /// Provisioning state of the Agent
  final pulumi.Input<String> provisioningState;
  /// The running state of the Agent
  final pulumi.Input<String> runningState;
  /// The upgrade channel of the agent
  final pulumi.Input<String>? upgradeChannel;

  /// Creates a new [AgentPropertiesResponse].
  /// [actionConfiguration] Configuration for action
  /// [agentEndpoint] The endpoint of the Agent
  /// [agentIdentity] Agent identity configuration for accessing resources
  /// [agentSpaceId] The agent space ID referenced by the agent
  /// [defaultModel] Default AI model configuration for the agent
  /// [incidentManagementConfiguration] Incident management configurations
  /// [knowledgeGraphConfiguration] Knowledge graph configuration for agent
  /// [logConfiguration] Log configurations
  /// [powerState] The power state of the Agent
  /// [provisioningState] Provisioning state of the Agent
  /// [runningState] The running state of the Agent
  /// [upgradeChannel] The upgrade channel of the agent
  const AgentPropertiesResponse({
    this.actionConfiguration,
    required this.agentEndpoint,
    this.agentIdentity,
    this.agentSpaceId,
    this.defaultModel,
    this.incidentManagementConfiguration,
    this.knowledgeGraphConfiguration,
    this.logConfiguration,
    required this.powerState,
    required this.provisioningState,
    required this.runningState,
    this.upgradeChannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionConfiguration': ?pulumi.Input.mapOptionalInputValue<ActionConfigurationResponse, Map<String, dynamic>>(actionConfiguration, (value) => value.toMap()),
      'agentEndpoint': agentEndpoint,
      'agentIdentity': ?pulumi.Input.mapOptionalInputValue<AgentIdentityResponse, Map<String, dynamic>>(agentIdentity, (value) => value.toMap()),
      'agentSpaceId': ?agentSpaceId,
      'defaultModel': ?pulumi.Input.mapOptionalInputValue<DefaultModelResponse, Map<String, dynamic>>(defaultModel, (value) => value.toMap()),
      'incidentManagementConfiguration': ?pulumi.Input.mapOptionalInputValue<IncidentManagementConfigurationResponse, Map<String, dynamic>>(incidentManagementConfiguration, (value) => value.toMap()),
      'knowledgeGraphConfiguration': ?pulumi.Input.mapOptionalInputValue<KnowledgeGraphConfigurationResponse, Map<String, dynamic>>(knowledgeGraphConfiguration, (value) => value.toMap()),
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<LogConfigurationResponse, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'powerState': powerState,
      'provisioningState': provisioningState,
      'runningState': runningState,
      'upgradeChannel': ?upgradeChannel,
    };
  }

  factory AgentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AgentPropertiesResponse(
      actionConfiguration: (() { final guardedValue = map['actionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentEndpoint: pulumi.Input.fromValue(map['agentEndpoint'] as String),
      agentIdentity: (() { final guardedValue = map['agentIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentSpaceId: (() { final guardedValue = map['agentSpaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultModel: (() { final guardedValue = map['defaultModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultModelResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      incidentManagementConfiguration: (() { final guardedValue = map['incidentManagementConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IncidentManagementConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      knowledgeGraphConfiguration: (() { final guardedValue = map['knowledgeGraphConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KnowledgeGraphConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logConfiguration: (() { final guardedValue = map['logConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      powerState: pulumi.Input.fromValue(map['powerState'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      runningState: pulumi.Input.fromValue(map['runningState'] as String),
      upgradeChannel: (() { final guardedValue = map['upgradeChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
