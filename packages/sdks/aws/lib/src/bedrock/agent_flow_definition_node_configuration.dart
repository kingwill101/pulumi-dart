// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_agent.dart';
import 'agent_flow_definition_node_configuration_condition.dart';
import 'agent_flow_definition_node_configuration_inline_code.dart';
import 'agent_flow_definition_node_configuration_knowledge_base.dart';
import 'agent_flow_definition_node_configuration_lambda_function.dart';
import 'agent_flow_definition_node_configuration_lex.dart';
import 'agent_flow_definition_node_configuration_prompt.dart';
import 'agent_flow_definition_node_configuration_retrieval.dart';
import 'agent_flow_definition_node_configuration_storage.dart';

class AgentFlowDefinitionNodeConfiguration {
  /// Configurations for an agent node in your flow. Invokes an alias of an agent and returns the response. See `definition.node.configuration.agent` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationAgent?>? agent;
  /// Configurations for a collector node in your flow. Collects an iteration of inputs and consolidates them into an array of outputs. This block has no arguments.
  final pulumi.Input<Map<String, dynamic>?>? collector;
  /// List of conditions. See `definition.node.configuration.condition.condition` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationCondition?>? condition;
  /// Configurations for an inline code node in your flow. See `definition.node.configuration.inline_code` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationInlineCode?>? inlineCode;
  /// Configurations for an input flow node in your flow. The node `inputs` can't be specified for this node. This block has no arguments.
  final pulumi.Input<Map<String, dynamic>?>? input;
  /// Configurations for an iterator node in your flow. Takes an input that is an array and iteratively sends each item of the array as an output to the following node. The size of the array is also returned in the output. The output flow node at the end of the flow iteration returns a response for each member of the array. To return only one response, you can include a collector node downstream from the iterator node. This block has no arguments.
  final pulumi.Input<Map<String, dynamic>?>? iterator;
  /// Configurations for a knowledge base node in your flow. Queries a knowledge base and returns the retrieved results or generated response. See `definition.node.configuration.knowledge_base` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationKnowledgeBase?>? knowledgeBase;
  /// Configurations for a Lambda function node in your flow. Invokes a Lambda function. See `definition.node.configuration.lambda_function` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationLambdaFunction?>? lambdaFunction;
  /// Configurations for a Lex node in your flow. Invokes an Amazon Lex bot to identify the intent of the input and return the intent as the output. See `definition.node.configuration.lex` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationLex?>? lex;
  /// Configurations for an output flow node in your flow. The node `outputs` can't be specified for this node. This block has no arguments.
  final pulumi.Input<Map<String, dynamic>?>? output;
  /// Configurations for a prompt node in your flow. Runs a prompt and generates the model response as the output. You can use a prompt from Prompt management or you can configure one in this node. See `definition.node.configuration.prompt` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPrompt?>? prompt;
  /// Configurations for a Retrieval node in your flow. Retrieves data from an Amazon S3 location and returns it as the output. See `definition.node.configuration.retrieval` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationRetrieval?>? retrieval;
  /// Configurations for a Storage node in your flow. Stores an input in an Amazon S3 location. See `definition.node.configuration.storage` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationStorage?>? storage;

  /// Creates a new [AgentFlowDefinitionNodeConfiguration].
  /// [agent] Configurations for an agent node in your flow. Invokes an alias of an agent and returns the response. See `definition.node.configuration.agent` Block for details.
  /// [collector] Configurations for a collector node in your flow. Collects an iteration of inputs and consolidates them into an array of outputs. This block has no arguments.
  /// [condition] List of conditions. See `definition.node.configuration.condition.condition` Block for details.
  /// [inlineCode] Configurations for an inline code node in your flow. See `definition.node.configuration.inline_code` Block for details.
  /// [input] Configurations for an input flow node in your flow. The node `inputs` can't be specified for this node. This block has no arguments.
  /// [iterator] Configurations for an iterator node in your flow. Takes an input that is an array and iteratively sends each item of the array as an output to the following node. The size of the array is also returned in the output. The output flow node at the end of the flow iteration returns a response for each member of the array. To return only one response, you can include a collector node downstream from the iterator node. This block has no arguments.
  /// [knowledgeBase] Configurations for a knowledge base node in your flow. Queries a knowledge base and returns the retrieved results or generated response. See `definition.node.configuration.knowledge_base` Block for details.
  /// [lambdaFunction] Configurations for a Lambda function node in your flow. Invokes a Lambda function. See `definition.node.configuration.lambda_function` Block for details.
  /// [lex] Configurations for a Lex node in your flow. Invokes an Amazon Lex bot to identify the intent of the input and return the intent as the output. See `definition.node.configuration.lex` Block for details.
  /// [output] Configurations for an output flow node in your flow. The node `outputs` can't be specified for this node. This block has no arguments.
  /// [prompt] Configurations for a prompt node in your flow. Runs a prompt and generates the model response as the output. You can use a prompt from Prompt management or you can configure one in this node. See `definition.node.configuration.prompt` Block for details.
  /// [retrieval] Configurations for a Retrieval node in your flow. Retrieves data from an Amazon S3 location and returns it as the output. See `definition.node.configuration.retrieval` Block for details.
  /// [storage] Configurations for a Storage node in your flow. Stores an input in an Amazon S3 location. See `definition.node.configuration.storage` Block for details.
  const AgentFlowDefinitionNodeConfiguration({
    this.agent,
    this.collector,
    this.condition,
    this.inlineCode,
    this.input,
    this.iterator,
    this.knowledgeBase,
    this.lambdaFunction,
    this.lex,
    this.output,
    this.prompt,
    this.retrieval,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationAgent, Map<String, dynamic>>(agent, (value) => value.toMap()),
      'collector': ?collector,
      'condition': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'inlineCode': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationInlineCode, Map<String, dynamic>>(inlineCode, (value) => value.toMap()),
      'input': ?input,
      'iterator': ?iterator,
      'knowledgeBase': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationKnowledgeBase, Map<String, dynamic>>(knowledgeBase, (value) => value.toMap()),
      'lambdaFunction': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationLambdaFunction, Map<String, dynamic>>(lambdaFunction, (value) => value.toMap()),
      'lex': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationLex, Map<String, dynamic>>(lex, (value) => value.toMap()),
      'output': ?output,
      'prompt': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPrompt, Map<String, dynamic>>(prompt, (value) => value.toMap()),
      'retrieval': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationRetrieval, Map<String, dynamic>>(retrieval, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfiguration(
      agent: (() { final guardedValue = map['agent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collector: (() { final guardedValue = map['collector']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inlineCode: (() { final guardedValue = map['inlineCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationInlineCode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      iterator: (() { final guardedValue = map['iterator']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      knowledgeBase: (() { final guardedValue = map['knowledgeBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationKnowledgeBase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambdaFunction: (() { final guardedValue = map['lambdaFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationLambdaFunction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lex: (() { final guardedValue = map['lex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationLex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      prompt: (() { final guardedValue = map['prompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPrompt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retrieval: (() { final guardedValue = map['retrieval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationRetrieval.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
