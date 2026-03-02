// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_definition_human_loop_activation_config.dart';
import 'flow_definition_human_loop_config.dart';
import 'flow_definition_human_loop_request_source.dart';
import 'flow_definition_output_config.dart';

/// Input properties used for looking up and filtering FlowDefinition resources.
class FlowDefinitionState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Flow Definition.
  final pulumi.Input<String>? arn;
  /// The name of your flow definition.
  final pulumi.Input<String>? flowDefinitionName;
  /// An object containing information about the events that trigger a human workflow. See Human Loop Activation Config details below.
  final pulumi.Input<FlowDefinitionHumanLoopActivationConfig>? humanLoopActivationConfig;
  /// An object containing information about the tasks the human reviewers will perform. See Human Loop Config details below.
  final pulumi.Input<FlowDefinitionHumanLoopConfig>? humanLoopConfig;
  /// Container for configuring the source of human task requests. Use to specify if Amazon Rekognition or Amazon Textract is used as an integration source. See Human Loop Request Source details below.
  final pulumi.Input<FlowDefinitionHumanLoopRequestSource>? humanLoopRequestSource;
  /// An object containing information about where the human review results will be uploaded. See Output Config details below.
  final pulumi.Input<FlowDefinitionOutputConfig>? outputConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the role needed to call other services on your behalf.
  final pulumi.Input<String>? roleArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [FlowDefinitionState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Flow Definition.
  /// [flowDefinitionName] The name of your flow definition.
  /// [humanLoopActivationConfig] An object containing information about the events that trigger a human workflow. See Human Loop Activation Config details below.
  /// [humanLoopConfig] An object containing information about the tasks the human reviewers will perform. See Human Loop Config details below.
  /// [humanLoopRequestSource] Container for configuring the source of human task requests. Use to specify if Amazon Rekognition or Amazon Textract is used as an integration source. See Human Loop Request Source details below.
  /// [outputConfig] An object containing information about where the human review results will be uploaded. See Output Config details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of the role needed to call other services on your behalf.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  FlowDefinitionState({
    this.arn,
    this.flowDefinitionName,
    this.humanLoopActivationConfig,
    this.humanLoopConfig,
    this.humanLoopRequestSource,
    this.outputConfig,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'flowDefinitionName': ?flowDefinitionName,
      'humanLoopActivationConfig': ?pulumi.Input.mapOptionalInputValue<FlowDefinitionHumanLoopActivationConfig, Map<String, dynamic>>(humanLoopActivationConfig, (value) => value.toMap()),
      'humanLoopConfig': ?pulumi.Input.mapOptionalInputValue<FlowDefinitionHumanLoopConfig, Map<String, dynamic>>(humanLoopConfig, (value) => value.toMap()),
      'humanLoopRequestSource': ?pulumi.Input.mapOptionalInputValue<FlowDefinitionHumanLoopRequestSource, Map<String, dynamic>>(humanLoopRequestSource, (value) => value.toMap()),
      'outputConfig': ?pulumi.Input.mapOptionalInputValue<FlowDefinitionOutputConfig, Map<String, dynamic>>(outputConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory FlowDefinitionState.fromMap(Map<String, dynamic> map) {
    return FlowDefinitionState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      flowDefinitionName: map['flowDefinitionName'] == null ? null : (map['flowDefinitionName'] as String).input(),
      humanLoopActivationConfig: map['humanLoopActivationConfig'] == null ? null : (FlowDefinitionHumanLoopActivationConfig.fromMap((map['humanLoopActivationConfig'] as Map).cast<String, dynamic>())).input(),
      humanLoopConfig: map['humanLoopConfig'] == null ? null : (FlowDefinitionHumanLoopConfig.fromMap((map['humanLoopConfig'] as Map).cast<String, dynamic>())).input(),
      humanLoopRequestSource: map['humanLoopRequestSource'] == null ? null : (FlowDefinitionHumanLoopRequestSource.fromMap((map['humanLoopRequestSource'] as Map).cast<String, dynamic>())).input(),
      outputConfig: map['outputConfig'] == null ? null : (FlowDefinitionOutputConfig.fromMap((map['outputConfig'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

