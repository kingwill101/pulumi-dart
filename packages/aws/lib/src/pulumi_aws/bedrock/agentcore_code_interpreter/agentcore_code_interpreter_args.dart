// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_code_interpreter_network_configuration/agentcore_code_interpreter_network_configuration.dart';
import '../agentcore_code_interpreter_timeouts/agentcore_code_interpreter_timeouts.dart';

/// The set of arguments for AgentcoreCodeInterpreter.
class AgentcoreCodeInterpreterArgs {
  /// Description of the code interpreter.
  final Input<String>? description;

  /// ARN of the IAM role that the code interpreter assumes for execution. Required when using `SANDBOX` network mode.
  final Input<String>? executionRoleArn;

  /// Name of the code interpreter.
  final Input<String>? name;

  /// Network configuration for the code interpreter. See <span pulumi-lang-nodejs="`networkConfiguration`" pulumi-lang-dotnet="`NetworkConfiguration`" pulumi-lang-go="`networkConfiguration`" pulumi-lang-python="`network_configuration`" pulumi-lang-yaml="`networkConfiguration`" pulumi-lang-java="`networkConfiguration`">`network_configuration`</span> below.
  ///
  /// The following arguments are optional:
  final Input<AgentcoreCodeInterpreterNetworkConfiguration>
      networkConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<AgentcoreCodeInterpreterTimeouts>? timeouts;

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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final executionRoleArnValue = executionRoleArn;
    if (executionRoleArnValue != null) {
      map['executionRoleArn'] = executionRoleArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkConfiguration'] = Input.mapInputValue<
        AgentcoreCodeInterpreterNetworkConfiguration,
        Map<String, dynamic>>(networkConfiguration, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          AgentcoreCodeInterpreterTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreCodeInterpreterArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreCodeInterpreterArgs(
      description: Input.asOptionalInput<String>(map['description']),
      executionRoleArn: Input.asOptionalInput<String>(map['executionRoleArn']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfiguration:
          Input.asInput<AgentcoreCodeInterpreterNetworkConfiguration>(
              map['networkConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<AgentcoreCodeInterpreterTimeouts>(
          map['timeouts']),
    );
  }
}
