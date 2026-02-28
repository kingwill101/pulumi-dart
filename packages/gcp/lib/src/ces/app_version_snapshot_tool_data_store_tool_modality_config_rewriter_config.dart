// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_modality_config_rewriter_config_model_setting.dart';

class AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig {
  /// (Output)
  /// Whether summarization is disabled.
  final bool? disabled;

  /// (Output)
  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfigModelSetting>?
      modelSettings;

  /// (Output)
  /// The prompt definition. If not set, default prompt will be used.
  final String? prompt;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig].
  /// [disabled] (Output)
  /// [modelSettings] (Output)
  /// [prompt] (Output)
  AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig({
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
      map['modelSettings'] = pulumi.Input.encodeList<
          AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfigModelSetting,
          Map<String, dynamic>>(modelSettingsValue, (value) => value.toMap());
    }
    final promptValue = prompt;
    if (promptValue != null) {
      map['prompt'] = promptValue;
    }
    return map;
  }

  factory AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      modelSettings: map['modelSettings'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfigModelSetting>(
              map['modelSettings'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfigModelSetting
                      .fromMap((value as Map).cast<String, dynamic>())),
      prompt: map['prompt'] == null ? null : map['prompt'] as String,
    );
  }
}
