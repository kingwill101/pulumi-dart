// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_authorizer_configuration.dart';
import 'agentcore_harness_environment.dart';
import 'agentcore_harness_environment_artifact.dart';
import 'agentcore_harness_memory.dart';
import 'agentcore_harness_model.dart';
import 'agentcore_harness_skill.dart';
import 'agentcore_harness_system_prompt.dart';
import 'agentcore_harness_timeouts.dart';
import 'agentcore_harness_tool.dart';
import 'agentcore_harness_truncation.dart';

/// {@template pulumi_bedrock_agentcore_harness_agentcore_harness_args_doc}
/// The set of arguments for AgentcoreHarness.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_harness_agentcore_harness_args_doc}
class AgentcoreHarnessArgs {
  /// List of tool names allowed for the harness. Use `["*"]` to allow all tools.
  final pulumi.Input<List<String>?>? allowedTools;
  /// Authorization configuration for authenticating requests. See `authorizerConfiguration` Block below.
  final pulumi.Input<AgentcoreHarnessAuthorizerConfiguration?>? authorizerConfiguration;
  /// Environment artifact configuration. See `environmentArtifact` Block below.
  final pulumi.Input<AgentcoreHarnessEnvironmentArtifact?>? environmentArtifact;
  /// Map of environment variables.
  final pulumi.Input<Map<String, String>?>? environmentVariables;
  /// Compute environment configuration. See `environment` Block below.If not specified, configured values can be found in `environmentActual`. Clearing this value will leave the environment configuration as is, but Terraform will not track changes.
  final pulumi.Input<List<AgentcoreHarnessEnvironment>?>? environments;
  /// ARN of the IAM role that the harness assumes to access AWS services.
  final pulumi.Input<String> executionRoleArn;
  /// Name of the harness. Must be 1-40 characters, alphanumeric and underscores only.
  final pulumi.Input<String> harnessName;
  /// Maximum number of iterations the agent loop can perform.
  final pulumi.Input<int?>? maxIterations;
  /// Maximum number of tokens in the model response.
  final pulumi.Input<int?>? maxTokens;
  /// Memory configuration. See `memory` Block below. If not specified, configured values can be found in `memoryActual`. Clearing this value will reset the memory configuration to default values.
  final pulumi.Input<AgentcoreHarnessMemory?>? memory;
  /// Model configuration for the harness. See `model` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreHarnessModel> model;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Skill configurations. See `skill` Block below.
  final pulumi.Input<List<AgentcoreHarnessSkill>?>? skills;
  /// System prompt blocks for the harness. See `systemPrompt` Block below.
  final pulumi.Input<List<AgentcoreHarnessSystemPrompt>?>? systemPrompts;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Timeout in seconds for the harness execution.
  final pulumi.Input<int?>? timeoutSeconds;
  final pulumi.Input<AgentcoreHarnessTimeouts?>? timeouts;
  /// Tool configurations. See `tool` Block below.
  final pulumi.Input<List<AgentcoreHarnessTool>?>? tools;
  /// Truncation configuration for conversation history. See `truncation` Block below.
  final pulumi.Input<List<AgentcoreHarnessTruncation>?>? truncations;

  /// Creates a new [AgentcoreHarnessArgs].
  /// [allowedTools] List of tool names allowed for the harness. Use `["*"]` to allow all tools.
  /// [authorizerConfiguration] Authorization configuration for authenticating requests. See `authorizerConfiguration` Block below.
  /// [environmentArtifact] Environment artifact configuration. See `environmentArtifact` Block below.
  /// [environmentVariables] Map of environment variables.
  /// [environments] Compute environment configuration. See `environment` Block below.If not specified, configured values can be found in `environmentActual`. Clearing this value will leave the environment configuration as is, but Terraform will not track changes.
  /// [executionRoleArn] ARN of the IAM role that the harness assumes to access AWS services.
  /// [harnessName] Name of the harness. Must be 1-40 characters, alphanumeric and underscores only.
  /// [maxIterations] Maximum number of iterations the agent loop can perform.
  /// [maxTokens] Maximum number of tokens in the model response.
  /// [memory] Memory configuration. See `memory` Block below. If not specified, configured values can be found in `memoryActual`. Clearing this value will reset the memory configuration to default values.
  /// [model] Model configuration for the harness. See `model` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skills] Skill configurations. See `skill` Block below.
  /// [systemPrompts] System prompt blocks for the harness. See `systemPrompt` Block below.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeoutSeconds] Timeout in seconds for the harness execution.
  /// [timeouts] Optional.
  /// [tools] Tool configurations. See `tool` Block below.
  /// [truncations] Truncation configuration for conversation history. See `truncation` Block below.
  const AgentcoreHarnessArgs({
    this.allowedTools,
    this.authorizerConfiguration,
    this.environmentArtifact,
    this.environmentVariables,
    this.environments,
    required this.executionRoleArn,
    required this.harnessName,
    this.maxIterations,
    this.maxTokens,
    this.memory,
    required this.model,
    this.region,
    this.skills,
    this.systemPrompts,
    this.tags,
    this.timeoutSeconds,
    this.timeouts,
    this.tools,
    this.truncations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedTools': ?allowedTools,
      'authorizerConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessAuthorizerConfiguration, Map<String, dynamic>>(authorizerConfiguration, (value) => value.toMap()),
      'environmentArtifact': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessEnvironmentArtifact, Map<String, dynamic>>(environmentArtifact, (value) => value.toMap()),
      'environmentVariables': ?environmentVariables,
      'environments': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessEnvironment>, List<Map<String, dynamic>>>(environments, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionRoleArn': executionRoleArn,
      'harnessName': harnessName,
      'maxIterations': ?maxIterations,
      'maxTokens': ?maxTokens,
      'memory': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessMemory, Map<String, dynamic>>(memory, (value) => value.toMap()),
      'model': pulumi.Input.mapInputValue<AgentcoreHarnessModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'region': ?region,
      'skills': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessSkill>, List<Map<String, dynamic>>>(skills, (value) => pulumi.Input.encodeList<AgentcoreHarnessSkill, Map<String, dynamic>>(value, (value) => value.toMap())),
      'systemPrompts': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessSystemPrompt>, List<Map<String, dynamic>>>(systemPrompts, (value) => pulumi.Input.encodeList<AgentcoreHarnessSystemPrompt, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'timeoutSeconds': ?timeoutSeconds,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'tools': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessTool>, List<Map<String, dynamic>>>(tools, (value) => pulumi.Input.encodeList<AgentcoreHarnessTool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'truncations': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessTruncation>, List<Map<String, dynamic>>>(truncations, (value) => pulumi.Input.encodeList<AgentcoreHarnessTruncation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreHarnessArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessArgs(
      allowedTools: (() { final guardedValue = map['allowedTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authorizerConfiguration: (() { final guardedValue = map['authorizerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentArtifact: (() { final guardedValue = map['environmentArtifact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessEnvironmentArtifact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      environments: (() { final guardedValue = map['environments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironment>(guardedValue, (value) => AgentcoreHarnessEnvironment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      executionRoleArn: pulumi.Input.fromValue(map['executionRoleArn'] as String),
      harnessName: pulumi.Input.fromValue(map['harnessName'] as String),
      maxIterations: (() { final guardedValue = map['maxIterations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxTokens: (() { final guardedValue = map['maxTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessMemory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      model: pulumi.Input.fromValue(AgentcoreHarnessModel.fromMap((map['model']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skills: (() { final guardedValue = map['skills']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessSkill>(guardedValue, (value) => AgentcoreHarnessSkill.fromMap((value as Map).cast<String, dynamic>()))); })(),
      systemPrompts: (() { final guardedValue = map['systemPrompts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessSystemPrompt>(guardedValue, (value) => AgentcoreHarnessSystemPrompt.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessTool>(guardedValue, (value) => AgentcoreHarnessTool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      truncations: (() { final guardedValue = map['truncations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessTruncation>(guardedValue, (value) => AgentcoreHarnessTruncation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
