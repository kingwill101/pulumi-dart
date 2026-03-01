// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'human_task_uiui_template.dart';

/// Input properties used for looking up and filtering HumanTaskUI resources.
class HumanTaskUIState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Human Task UI.
  final pulumi.Input<String>? arn;
  /// The name of the Human Task UI.
  final pulumi.Input<String>? humanTaskUiName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Liquid template for the worker user interface. See UI Template below.
  final pulumi.Input<HumanTaskUIUiTemplate>? uiTemplate;

  /// Creates a new [HumanTaskUIState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Human Task UI.
  /// [humanTaskUiName] The name of the Human Task UI.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uiTemplate] The Liquid template for the worker user interface. See UI Template below.
  HumanTaskUIState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? humanTaskUiName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<HumanTaskUIUiTemplate>? uiTemplate,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      humanTaskUiName = pulumi.Input.asOptionalInput<String>(humanTaskUiName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uiTemplate = pulumi.Input.asOptionalInput<HumanTaskUIUiTemplate>(uiTemplate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'humanTaskUiName': ?humanTaskUiName,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uiTemplate': ?pulumi.Input.mapOptionalInputValue<HumanTaskUIUiTemplate, Map<String, dynamic>>(uiTemplate, (value) => value.toMap()),
    };
  }

  factory HumanTaskUIState.fromMap(Map<String, dynamic> map) {
    return HumanTaskUIState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      humanTaskUiName: map['humanTaskUiName'] == null ? null : pulumi.Output.create<String>(map['humanTaskUiName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uiTemplate: map['uiTemplate'] == null ? null : pulumi.Output.create<HumanTaskUIUiTemplate>(HumanTaskUIUiTemplate.fromMap((map['uiTemplate'] as Map).cast<String, dynamic>())),
    );
  }
}

