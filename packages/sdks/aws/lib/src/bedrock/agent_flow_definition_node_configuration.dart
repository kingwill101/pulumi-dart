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
  /// Contains configurations for an agent node in your flow. Invokes an alias of an agent and returns the response. See Agent Node Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationAgent>? agent;
  /// Contains configurations for a collector node in your flow. Collects an iteration of inputs and consolidates them into an array of outputs. This object has no fields.
  final pulumi.Input<Map<String, dynamic>>? collector;
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationCondition>? condition;
  /// Contains configurations for an inline code node in your flow. See Inline Code Node Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationInlineCode>? inlineCode;
  final pulumi.Input<Map<String, dynamic>>? input;
  /// Contains configurations for an iterator node in your flow. Takes an input that is an array and iteratively sends each item of the array as an output to the following node. The size of the array is also returned in the output. The output flow node at the end of the flow iteration will return a response for each member of the array. To return only one response, you can include a collector node downstream from the iterator node. This object has no fields.
  final pulumi.Input<Map<String, dynamic>>? iterator;
  /// Contains configurations for a knowledge base node in your flow. Queries a knowledge base and returns the retrieved results or generated response. See Knowledge Base Node Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationKnowledgeBase>? knowledgeBase;
  /// Contains configurations for a Lambda function node in your flow. Invokes a Lambda function. See Lambda Function Node Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationLambdaFunction>? lambdaFunction;
  /// Contains configurations for a Lex node in your flow. Invokes an Amazon Lex bot to identify the intent of the input and return the intent as the output. See Lex Node Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationLex>? lex;
  final pulumi.Input<Map<String, dynamic>>? output;
  /// Contains configurations for a prompt node in your flow. Runs a prompt and generates the model response as the output. You can use a prompt from Prompt management or you can configure one in this node. See Prompt Node Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPrompt>? prompt;
  /// Contains configurations for a Retrieval node in your flow. Retrieves data from an Amazon S3 location and returns it as the output. See Retrieval Node Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationRetrieval>? retrieval;
  /// Contains configurations for a Storage node in your flow. Stores an input in an Amazon S3 location. See Storage Node Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationStorage>? storage;

  /// Creates a new [AgentFlowDefinitionNodeConfiguration].
  /// [agent] Contains configurations for an agent node in your flow. Invokes an alias of an agent and returns the response. See Agent Node Configuration for more information.
  /// [collector] Contains configurations for a collector node in your flow. Collects an iteration of inputs and consolidates them into an array of outputs. This object has no fields.
  /// [condition] Optional.
  /// [inlineCode] Contains configurations for an inline code node in your flow. See Inline Code Node Configuration for more information.
  /// [input] Optional.
  /// [iterator] Contains configurations for an iterator node in your flow. Takes an input that is an array and iteratively sends each item of the array as an output to the following node. The size of the array is also returned in the output. The output flow node at the end of the flow iteration will return a response for each member of the array. To return only one response, you can include a collector node downstream from the iterator node. This object has no fields.
  /// [knowledgeBase] Contains configurations for a knowledge base node in your flow. Queries a knowledge base and returns the retrieved results or generated response. See Knowledge Base Node Configuration for more information.
  /// [lambdaFunction] Contains configurations for a Lambda function node in your flow. Invokes a Lambda function. See Lambda Function Node Configuration for more information.
  /// [lex] Contains configurations for a Lex node in your flow. Invokes an Amazon Lex bot to identify the intent of the input and return the intent as the output. See Lex Node Configuration for more information.
  /// [output] Optional.
  /// [prompt] Contains configurations for a prompt node in your flow. Runs a prompt and generates the model response as the output. You can use a prompt from Prompt management or you can configure one in this node. See Prompt Node Configuration for more information.
  /// [retrieval] Contains configurations for a Retrieval node in your flow. Retrieves data from an Amazon S3 location and returns it as the output. See Retrieval Node Configuration for more information.
  /// [storage] Contains configurations for a Storage node in your flow. Stores an input in an Amazon S3 location. See Storage Node Configuration for more information.
  AgentFlowDefinitionNodeConfiguration({
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
      agent: map['agent'] == null ? null : (AgentFlowDefinitionNodeConfigurationAgent.fromMap((map['agent'] as Map).cast<String, dynamic>())).input(),
      collector: map['collector'] == null ? null : ((map['collector'] as Map).cast<String, dynamic>()).input(),
      condition: map['condition'] == null ? null : (AgentFlowDefinitionNodeConfigurationCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      inlineCode: map['inlineCode'] == null ? null : (AgentFlowDefinitionNodeConfigurationInlineCode.fromMap((map['inlineCode'] as Map).cast<String, dynamic>())).input(),
      input: map['input'] == null ? null : ((map['input'] as Map).cast<String, dynamic>()).input(),
      iterator: map['iterator'] == null ? null : ((map['iterator'] as Map).cast<String, dynamic>()).input(),
      knowledgeBase: map['knowledgeBase'] == null ? null : (AgentFlowDefinitionNodeConfigurationKnowledgeBase.fromMap((map['knowledgeBase'] as Map).cast<String, dynamic>())).input(),
      lambdaFunction: map['lambdaFunction'] == null ? null : (AgentFlowDefinitionNodeConfigurationLambdaFunction.fromMap((map['lambdaFunction'] as Map).cast<String, dynamic>())).input(),
      lex: map['lex'] == null ? null : (AgentFlowDefinitionNodeConfigurationLex.fromMap((map['lex'] as Map).cast<String, dynamic>())).input(),
      output: map['output'] == null ? null : ((map['output'] as Map).cast<String, dynamic>()).input(),
      prompt: map['prompt'] == null ? null : (AgentFlowDefinitionNodeConfigurationPrompt.fromMap((map['prompt'] as Map).cast<String, dynamic>())).input(),
      retrieval: map['retrieval'] == null ? null : (AgentFlowDefinitionNodeConfigurationRetrieval.fromMap((map['retrieval'] as Map).cast<String, dynamic>())).input(),
      storage: map['storage'] == null ? null : (AgentFlowDefinitionNodeConfigurationStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

