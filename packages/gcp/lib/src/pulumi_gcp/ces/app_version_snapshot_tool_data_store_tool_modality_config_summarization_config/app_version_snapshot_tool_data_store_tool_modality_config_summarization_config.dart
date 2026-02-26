// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_tool_data_store_tool_modality_config_summarization_config_model_setting/app_version_snapshot_tool_data_store_tool_modality_config_summarization_config_model_setting.dart';

class AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig {
  /// (Output)
  /// Whether summarization is disabled.
  final bool? disabled;

  /// (Output)
  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfigModelSetting>?
      modelSettings;

  /// (Output)
  /// The prompt definition. If not set, default prompt will be used.
  final String? prompt;

  AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig({
    this.disabled,
    this.modelSettings,
    this.prompt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final modelSettingsValue = modelSettings;
    if (modelSettingsValue != null) {
      map['modelSettings'] = Input.encodeList<
          AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfigModelSetting,
          Map<String, dynamic>>(modelSettingsValue, (value) => value.toMap());
    }
    final promptValue = prompt;
    if (promptValue != null) {
      map['prompt'] = promptValue;
    }
    return map;
  }

  factory AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      modelSettings: map['modelSettings'] == null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfigModelSetting>(
              map['modelSettings'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfigModelSetting
                      .fromMap((value as Map).cast<String, dynamic>())),
      prompt: map['prompt'] == null ? null : map['prompt'] as String,
    );
  }
}
