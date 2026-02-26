// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../flow_definition_human_loop_activation_config/flow_definition_human_loop_activation_config.dart';
import '../flow_definition_human_loop_config/flow_definition_human_loop_config.dart';
import '../flow_definition_human_loop_request_source/flow_definition_human_loop_request_source.dart';
import '../flow_definition_output_config/flow_definition_output_config.dart';

/// The set of arguments for FlowDefinition.
class FlowDefinitionArgs {
  /// The name of your flow definition.
  final Input<String> flowDefinitionName;

  /// An object containing information about the events that trigger a human workflow. See Human Loop Activation Config details below.
  final Input<FlowDefinitionHumanLoopActivationConfig>?
      humanLoopActivationConfig;

  /// An object containing information about the tasks the human reviewers will perform. See Human Loop Config details below.
  final Input<FlowDefinitionHumanLoopConfig> humanLoopConfig;

  /// Container for configuring the source of human task requests. Use to specify if Amazon Rekognition or Amazon Textract is used as an integration source. See Human Loop Request Source details below.
  final Input<FlowDefinitionHumanLoopRequestSource>? humanLoopRequestSource;

  /// An object containing information about where the human review results will be uploaded. See Output Config details below.
  final Input<FlowDefinitionOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the role needed to call other services on your behalf.
  final Input<String> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['humanLoopActivationConfig'] = Input.mapOptionalInputValue<
              FlowDefinitionHumanLoopActivationConfig, Map<String, dynamic>>(
          humanLoopActivationConfigValue, (value) => value.toMap());
    }
    map['humanLoopConfig'] = Input.mapInputValue<FlowDefinitionHumanLoopConfig,
        Map<String, dynamic>>(humanLoopConfig, (value) => value.toMap());
    final humanLoopRequestSourceValue = humanLoopRequestSource;
    if (humanLoopRequestSourceValue != null) {
      map['humanLoopRequestSource'] = Input.mapOptionalInputValue<
              FlowDefinitionHumanLoopRequestSource, Map<String, dynamic>>(
          humanLoopRequestSourceValue, (value) => value.toMap());
    }
    map['outputConfig'] =
        Input.mapInputValue<FlowDefinitionOutputConfig, Map<String, dynamic>>(
            outputConfig, (value) => value.toMap());
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
      flowDefinitionName: Input.asInput<String>(map['flowDefinitionName']),
      humanLoopActivationConfig:
          Input.asOptionalInput<FlowDefinitionHumanLoopActivationConfig>(
              map['humanLoopActivationConfig']),
      humanLoopConfig:
          Input.asInput<FlowDefinitionHumanLoopConfig>(map['humanLoopConfig']),
      humanLoopRequestSource:
          Input.asOptionalInput<FlowDefinitionHumanLoopRequestSource>(
              map['humanLoopRequestSource']),
      outputConfig:
          Input.asInput<FlowDefinitionOutputConfig>(map['outputConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
