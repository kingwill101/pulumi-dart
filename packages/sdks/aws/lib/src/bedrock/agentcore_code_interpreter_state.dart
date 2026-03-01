// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_code_interpreter_network_configuration.dart';
import 'agentcore_code_interpreter_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreCodeInterpreter resources.
class AgentcoreCodeInterpreterState {
  /// ARN of the Code Interpreter.
  final pulumi.Input<String>? codeInterpreterArn;
  /// Unique identifier of the Code Interpreter.
  final pulumi.Input<String>? codeInterpreterId;
  /// Description of the code interpreter.
  final pulumi.Input<String>? description;
  /// ARN of the IAM role that the code interpreter assumes for execution. Required when using `SANDBOX` network mode.
  final pulumi.Input<String>? executionRoleArn;
  /// Name of the code interpreter.
  final pulumi.Input<String>? name;
  /// Network configuration for the code interpreter. See `network_configuration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreCodeInterpreterNetworkConfiguration>? networkConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AgentcoreCodeInterpreterTimeouts>? timeouts;

  /// Creates a new [AgentcoreCodeInterpreterState].
  /// [codeInterpreterArn] ARN of the Code Interpreter.
  /// [codeInterpreterId] Unique identifier of the Code Interpreter.
  /// [description] Description of the code interpreter.
  /// [executionRoleArn] ARN of the IAM role that the code interpreter assumes for execution. Required when using `SANDBOX` network mode.
  /// [name] Name of the code interpreter.
  /// [networkConfiguration] Network configuration for the code interpreter. See `network_configuration` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  AgentcoreCodeInterpreterState({
    pulumi.Output<String>? codeInterpreterArn,
    pulumi.Output<String>? codeInterpreterId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? executionRoleArn,
    pulumi.Output<String>? name,
    pulumi.Output<AgentcoreCodeInterpreterNetworkConfiguration>? networkConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<AgentcoreCodeInterpreterTimeouts>? timeouts,
  }) :
      codeInterpreterArn = pulumi.Input.asOptionalInput<String>(codeInterpreterArn),
      codeInterpreterId = pulumi.Input.asOptionalInput<String>(codeInterpreterId),
      description = pulumi.Input.asOptionalInput<String>(description),
      executionRoleArn = pulumi.Input.asOptionalInput<String>(executionRoleArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfiguration = pulumi.Input.asOptionalInput<AgentcoreCodeInterpreterNetworkConfiguration>(networkConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<AgentcoreCodeInterpreterTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeInterpreterArn': ?codeInterpreterArn,
      'codeInterpreterId': ?codeInterpreterId,
      'description': ?description,
      'executionRoleArn': ?executionRoleArn,
      'name': ?name,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreCodeInterpreterNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreCodeInterpreterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreCodeInterpreterState.fromMap(Map<String, dynamic> map) {
    return AgentcoreCodeInterpreterState(
      codeInterpreterArn: map['codeInterpreterArn'] == null ? null : pulumi.Output.create<String>(map['codeInterpreterArn'] as String),
      codeInterpreterId: map['codeInterpreterId'] == null ? null : pulumi.Output.create<String>(map['codeInterpreterId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      executionRoleArn: map['executionRoleArn'] == null ? null : pulumi.Output.create<String>(map['executionRoleArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfiguration: map['networkConfiguration'] == null ? null : pulumi.Output.create<AgentcoreCodeInterpreterNetworkConfiguration>(AgentcoreCodeInterpreterNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentcoreCodeInterpreterTimeouts>(AgentcoreCodeInterpreterTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

