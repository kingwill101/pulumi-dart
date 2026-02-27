// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../human_task_uiui_template/human_task_uiui_template.dart';

/// The set of arguments for HumanTaskUI.
class HumanTaskUIArgs {
  /// The name of the Human Task UI.
  final pulumi.Input<String> humanTaskUiName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The Liquid template for the worker user interface. See UI Template below.
  final pulumi.Input<HumanTaskUIUiTemplate> uiTemplate;

  HumanTaskUIArgs({
    required this.humanTaskUiName,
    this.region,
    this.tags,
    required this.uiTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['humanTaskUiName'] = humanTaskUiName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['uiTemplate'] =
        pulumi.Input.mapInputValue<HumanTaskUIUiTemplate, Map<String, dynamic>>(
            uiTemplate, (value) => value.toMap());
    return map;
  }

  factory HumanTaskUIArgs.fromMap(Map<String, dynamic> map) {
    return HumanTaskUIArgs(
      humanTaskUiName: pulumi.Input.asInput<String>(map['humanTaskUiName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      uiTemplate:
          pulumi.Input.asInput<HumanTaskUIUiTemplate>(map['uiTemplate']),
    );
  }
}
