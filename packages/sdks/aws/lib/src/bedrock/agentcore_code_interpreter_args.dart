// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_code_interpreter_network_configuration.dart';
import 'agentcore_code_interpreter_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_code_interpreter_agentcore_code_interpreter_args_doc}
/// The set of arguments for AgentcoreCodeInterpreter.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_code_interpreter_agentcore_code_interpreter_args_doc}
class AgentcoreCodeInterpreterArgs {
  /// Description of the code interpreter.
  final pulumi.Input<String>? description;
  /// ARN of the IAM role that the code interpreter assumes for execution. Required when using `SANDBOX` network mode.
  final pulumi.Input<String>? executionRoleArn;
  /// Name of the code interpreter.
  final pulumi.Input<String>? name;
  /// Network configuration for the code interpreter. See `network_configuration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreCodeInterpreterNetworkConfiguration> networkConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentcoreCodeInterpreterTimeouts>? timeouts;

  /// Creates a new [AgentcoreCodeInterpreterArgs].
  /// [description] Description of the code interpreter.
  /// [executionRoleArn] ARN of the IAM role that the code interpreter assumes for execution. Required when using `SANDBOX` network mode.
  /// [name] Name of the code interpreter.
  /// [networkConfiguration] Network configuration for the code interpreter. See `network_configuration` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  AgentcoreCodeInterpreterArgs({
    this.description,
    this.executionRoleArn,
    this.name,
    required this.networkConfiguration,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'executionRoleArn': ?executionRoleArn,
      'name': ?name,
      'networkConfiguration': pulumi.Input.mapInputValue<AgentcoreCodeInterpreterNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreCodeInterpreterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreCodeInterpreterArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreCodeInterpreterArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      executionRoleArn: map['executionRoleArn'] == null ? null : ((map['executionRoleArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      networkConfiguration: (AgentcoreCodeInterpreterNetworkConfiguration.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((AgentcoreCodeInterpreterTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

