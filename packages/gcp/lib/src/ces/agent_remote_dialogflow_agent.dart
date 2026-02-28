// ignore_for_file: unused_element, unnecessary_cast

class AgentRemoteDialogflowAgent {
  /// The
  /// [Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-conversational-agents
  /// agent resource name.
  /// Format: `projects/{project}/locations/{location}/agents/{agent}`
  final String agent;

  /// The environment ID of the Dialogflow agent be used for the agent
  /// execution. If not specified, the draft environment will be used.
  final String? environmentId;

  /// The flow ID of the flow in the Dialogflow agent.
  final String flowId;

  /// The mapping of the app variables names to the Dialogflow session
  /// parameters names to be sent to the Dialogflow agent as input.
  final Map<String, String>? inputVariableMapping;

  /// The mapping of the Dialogflow session parameters names to the app
  /// variables names to be sent back to the CES agent after the Dialogflow
  /// agent execution ends.
  final Map<String, String>? outputVariableMapping;

  /// Creates a new [AgentRemoteDialogflowAgent].
  /// [agent] The
  /// [environmentId] The environment ID of the Dialogflow agent be used for the agent
  /// [flowId] The flow ID of the flow in the Dialogflow agent.
  /// [inputVariableMapping] The mapping of the app variables names to the Dialogflow session
  /// [outputVariableMapping] The mapping of the Dialogflow session parameters names to the app
  AgentRemoteDialogflowAgent({
    required this.agent,
    this.environmentId,
    required this.flowId,
    this.inputVariableMapping,
    this.outputVariableMapping,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agent'] = agent;
    final environmentIdValue = environmentId;
    if (environmentIdValue != null) {
      map['environmentId'] = environmentIdValue;
    }
    map['flowId'] = flowId;
    final inputVariableMappingValue = inputVariableMapping;
    if (inputVariableMappingValue != null) {
      map['inputVariableMapping'] = inputVariableMappingValue;
    }
    final outputVariableMappingValue = outputVariableMapping;
    if (outputVariableMappingValue != null) {
      map['outputVariableMapping'] = outputVariableMappingValue;
    }
    return map;
  }

  factory AgentRemoteDialogflowAgent.fromMap(Map<String, dynamic> map) {
    return AgentRemoteDialogflowAgent(
      agent: map['agent'] as String,
      environmentId:
          map['environmentId'] == null ? null : map['environmentId'] as String,
      flowId: map['flowId'] as String,
      inputVariableMapping: map['inputVariableMapping'] == null
          ? null
          : (map['inputVariableMapping'] as Map).cast<String, String>(),
      outputVariableMapping: map['outputVariableMapping'] == null
          ? null
          : (map['outputVariableMapping'] as Map).cast<String, String>(),
    );
  }
}
