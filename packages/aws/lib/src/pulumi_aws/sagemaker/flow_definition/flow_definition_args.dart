// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../flow_definition_human_loop_activation_config/flow_definition_human_loop_activation_config.dart';
import '../flow_definition_human_loop_config/flow_definition_human_loop_config.dart';
import '../flow_definition_human_loop_request_source/flow_definition_human_loop_request_source.dart';
import '../flow_definition_output_config/flow_definition_output_config.dart';

/// The set of arguments for FlowDefinition.
class FlowDefinitionArgs {
  /// The name of your flow definition.
  final pulumi.Input<String> flowDefinitionName;

  /// An object containing information about the events that trigger a human workflow. See Human Loop Activation Config details below.
  final pulumi.Input<FlowDefinitionHumanLoopActivationConfig>?
      humanLoopActivationConfig;

  /// An object containing information about the tasks the human reviewers will perform. See Human Loop Config details below.
  final pulumi.Input<FlowDefinitionHumanLoopConfig> humanLoopConfig;

  /// Container for configuring the source of human task requests. Use to specify if Amazon Rekognition or Amazon Textract is used as an integration source. See Human Loop Request Source details below.
  final pulumi.Input<FlowDefinitionHumanLoopRequestSource>?
      humanLoopRequestSource;

  /// An object containing information about where the human review results will be uploaded. See Output Config details below.
  final pulumi.Input<FlowDefinitionOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of the role needed to call other services on your behalf.
  final pulumi.Input<String> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  FlowDefinitionArgs({
    required this.flowDefinitionName,
    this.humanLoopActivationConfig,
    required this.humanLoopConfig,
    this.humanLoopRequestSource,
    required this.outputConfig,
    this.region,
    required this.roleArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['flowDefinitionName'] = flowDefinitionName;
    final humanLoopActivationConfigValue = humanLoopActivationConfig;
    if (humanLoopActivationConfigValue != null) {
      map['humanLoopActivationConfig'] = pulumi.Input.mapOptionalInputValue<
              FlowDefinitionHumanLoopActivationConfig, Map<String, dynamic>>(
          humanLoopActivationConfigValue, (value) => value.toMap());
    }
    map['humanLoopConfig'] = pulumi.Input.mapInputValue<
        FlowDefinitionHumanLoopConfig,
        Map<String, dynamic>>(humanLoopConfig, (value) => value.toMap());
    final humanLoopRequestSourceValue = humanLoopRequestSource;
    if (humanLoopRequestSourceValue != null) {
      map['humanLoopRequestSource'] = pulumi.Input.mapOptionalInputValue<
              FlowDefinitionHumanLoopRequestSource, Map<String, dynamic>>(
          humanLoopRequestSourceValue, (value) => value.toMap());
    }
    map['outputConfig'] = pulumi.Input.mapInputValue<FlowDefinitionOutputConfig,
        Map<String, dynamic>>(outputConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory FlowDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return FlowDefinitionArgs(
      flowDefinitionName:
          pulumi.Input.asInput<String>(map['flowDefinitionName']),
      humanLoopActivationConfig:
          pulumi.Input.asOptionalInput<FlowDefinitionHumanLoopActivationConfig>(
              map['humanLoopActivationConfig']),
      humanLoopConfig: pulumi.Input.asInput<FlowDefinitionHumanLoopConfig>(
          map['humanLoopConfig']),
      humanLoopRequestSource:
          pulumi.Input.asOptionalInput<FlowDefinitionHumanLoopRequestSource>(
              map['humanLoopRequestSource']),
      outputConfig:
          pulumi.Input.asInput<FlowDefinitionOutputConfig>(map['outputConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
