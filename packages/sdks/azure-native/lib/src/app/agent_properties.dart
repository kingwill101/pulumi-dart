// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_configuration.dart';
import 'agent_identity.dart';
import 'default_model.dart';
import 'incident_management_configuration.dart';
import 'knowledge_graph_configuration.dart';
import 'log_configuration.dart';

/// Properties of the Agent
class AgentProperties {
  /// Configuration for action
  final pulumi.Input<ActionConfiguration>? actionConfiguration;
  /// Agent identity configuration for accessing resources
  final pulumi.Input<AgentIdentity>? agentIdentity;
  /// The agent space ID referenced by the agent
  final pulumi.Input<String>? agentSpaceId;
  /// Default AI model configuration for the agent
  final pulumi.Input<DefaultModel>? defaultModel;
  /// Incident management configurations
  final pulumi.Input<IncidentManagementConfiguration>? incidentManagementConfiguration;
  /// Knowledge graph configuration for agent
  final pulumi.Input<KnowledgeGraphConfiguration>? knowledgeGraphConfiguration;
  /// Log configurations
  final pulumi.Input<LogConfiguration>? logConfiguration;
  /// The upgrade channel of the agent
  final pulumi.Input<String>? upgradeChannel;

  /// Creates a new [AgentProperties].
  /// [actionConfiguration] Configuration for action
  /// [agentIdentity] Agent identity configuration for accessing resources
  /// [agentSpaceId] The agent space ID referenced by the agent
  /// [defaultModel] Default AI model configuration for the agent
  /// [incidentManagementConfiguration] Incident management configurations
  /// [knowledgeGraphConfiguration] Knowledge graph configuration for agent
  /// [logConfiguration] Log configurations
  /// [upgradeChannel] The upgrade channel of the agent
  const AgentProperties({
    this.actionConfiguration,
    this.agentIdentity,
    this.agentSpaceId,
    this.defaultModel,
    this.incidentManagementConfiguration,
    this.knowledgeGraphConfiguration,
    this.logConfiguration,
    this.upgradeChannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionConfiguration': ?pulumi.Input.mapOptionalInputValue<ActionConfiguration, Map<String, dynamic>>(actionConfiguration, (value) => value.toMap()),
      'agentIdentity': ?pulumi.Input.mapOptionalInputValue<AgentIdentity, Map<String, dynamic>>(agentIdentity, (value) => value.toMap()),
      'agentSpaceId': ?agentSpaceId,
      'defaultModel': ?pulumi.Input.mapOptionalInputValue<DefaultModel, Map<String, dynamic>>(defaultModel, (value) => value.toMap()),
      'incidentManagementConfiguration': ?pulumi.Input.mapOptionalInputValue<IncidentManagementConfiguration, Map<String, dynamic>>(incidentManagementConfiguration, (value) => value.toMap()),
      'knowledgeGraphConfiguration': ?pulumi.Input.mapOptionalInputValue<KnowledgeGraphConfiguration, Map<String, dynamic>>(knowledgeGraphConfiguration, (value) => value.toMap()),
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<LogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'upgradeChannel': ?upgradeChannel,
    };
  }

  factory AgentProperties.fromMap(Map<String, dynamic> map) {
    return AgentProperties(
      actionConfiguration: (() { final guardedValue = map['actionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentIdentity: (() { final guardedValue = map['agentIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentSpaceId: (() { final guardedValue = map['agentSpaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultModel: (() { final guardedValue = map['defaultModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      incidentManagementConfiguration: (() { final guardedValue = map['incidentManagementConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IncidentManagementConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      knowledgeGraphConfiguration: (() { final guardedValue = map['knowledgeGraphConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KnowledgeGraphConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logConfiguration: (() { final guardedValue = map['logConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upgradeChannel: (() { final guardedValue = map['upgradeChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
