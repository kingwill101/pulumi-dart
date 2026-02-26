// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../code_tools_setting_enabled_tool/code_tools_setting_enabled_tool.dart';

/// The set of arguments for CodeToolsSetting.
class CodeToolsSettingArgs {
  /// Id of the Code Tools Setting.
  final Input<String> codeToolsSettingId;

  /// Represents the full set of enabled tools.
  /// Structure is documented below.
  final Input<List<CodeToolsSettingEnabledTool>> enabledTools;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  CodeToolsSettingArgs({
    required this.codeToolsSettingId,
    required this.enabledTools,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['codeToolsSettingId'] = codeToolsSettingId;
    map['enabledTools'] = Input.mapInputValue<List<CodeToolsSettingEnabledTool>,
            List<Map<String, dynamic>>>(
        enabledTools,
        (value) =>
            Input.encodeList<CodeToolsSettingEnabledTool, Map<String, dynamic>>(
                value, (value) => value.toMap()));
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
      codeToolsSettingId: Input.asInput<String>(map['codeToolsSettingId']),
      enabledTools:
          Input.asInput<List<CodeToolsSettingEnabledTool>>(map['enabledTools']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
