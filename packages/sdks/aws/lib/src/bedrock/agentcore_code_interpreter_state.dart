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
    this.codeInterpreterArn,
    this.codeInterpreterId,
    this.description,
    this.executionRoleArn,
    this.name,
    this.networkConfiguration,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

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
      codeInterpreterArn: (() { final guardedValue = map['codeInterpreterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codeInterpreterId: (() { final guardedValue = map['codeInterpreterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfiguration: (() { final guardedValue = map['networkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreCodeInterpreterNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreCodeInterpreterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

