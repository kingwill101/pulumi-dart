// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_tools_setting_enabled_tool.dart';

/// {@template pulumi_gemini_code_tools_setting_code_tools_setting_args_doc}
/// The set of arguments for CodeToolsSetting.
/// {@endtemplate}
/// {@macro pulumi_gemini_code_tools_setting_code_tools_setting_args_doc}
class CodeToolsSettingArgs {
  /// Id of the Code Tools Setting.
  final pulumi.Input<String> codeToolsSettingId;

  /// Represents the full set of enabled tools.
  /// Structure is documented below.
  final pulumi.Input<List<CodeToolsSettingEnabledTool>> enabledTools;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [CodeToolsSettingArgs].
  /// [codeToolsSettingId] Id of the Code Tools Setting.
  /// [enabledTools] Represents the full set of enabled tools.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  CodeToolsSettingArgs({
    required String codeToolsSettingId,
    required List<CodeToolsSettingEnabledTool> enabledTools,
    Map<String, String>? labels,
    String? location,
    String? project,
  })  : codeToolsSettingId = pulumi.Input.asInput<String>(codeToolsSettingId),
        enabledTools = pulumi.Input.asInput<List<CodeToolsSettingEnabledTool>>(
            enabledTools),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['codeToolsSettingId'] = codeToolsSettingId;
    map['enabledTools'] = pulumi.Input.mapInputValue<
            List<CodeToolsSettingEnabledTool>, List<Map<String, dynamic>>>(
        enabledTools,
        (value) => pulumi.Input.encodeList<CodeToolsSettingEnabledTool,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory CodeToolsSettingArgs.fromMap(Map<String, dynamic> map) {
    return CodeToolsSettingArgs(
      codeToolsSettingId: map['codeToolsSettingId'] as String,
      enabledTools: pulumi.Input.decodeList<CodeToolsSettingEnabledTool>(
          map['enabledTools'],
          (value) => CodeToolsSettingEnabledTool.fromMap(
              (value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
