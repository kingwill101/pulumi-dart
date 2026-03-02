// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'human_task_uiui_template.dart';

/// {@template pulumi_sagemaker_human_task_ui_human_task_uiargs_doc}
/// The set of arguments for HumanTaskUI.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_human_task_ui_human_task_uiargs_doc}
class HumanTaskUIArgs {
  /// The name of the Human Task UI.
  final pulumi.Input<String> humanTaskUiName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Liquid template for the worker user interface. See UI Template below.
  final pulumi.Input<HumanTaskUIUiTemplate> uiTemplate;

  /// Creates a new [HumanTaskUIArgs].
  /// [humanTaskUiName] The name of the Human Task UI.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [uiTemplate] The Liquid template for the worker user interface. See UI Template below.
  HumanTaskUIArgs({
    required this.humanTaskUiName,
    this.region,
    this.tags,
    required this.uiTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'humanTaskUiName': humanTaskUiName,
      'region': ?region,
      'tags': ?tags,
      'uiTemplate': pulumi.Input.mapInputValue<HumanTaskUIUiTemplate, Map<String, dynamic>>(uiTemplate, (value) => value.toMap()),
    };
  }

  factory HumanTaskUIArgs.fromMap(Map<String, dynamic> map) {
    return HumanTaskUIArgs(
      humanTaskUiName: (map['humanTaskUiName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      uiTemplate: (HumanTaskUIUiTemplate.fromMap((map['uiTemplate'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

