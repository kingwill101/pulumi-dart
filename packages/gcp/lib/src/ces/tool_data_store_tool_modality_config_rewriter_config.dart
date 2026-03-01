// ignore_for_file: unused_element, unnecessary_cast

import 'tool_data_store_tool_modality_config_rewriter_config_model_settings.dart';

class ToolDataStoreToolModalityConfigRewriterConfig {
  /// Whether the rewriter is disabled.
  final bool? disabled;

  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final ToolDataStoreToolModalityConfigRewriterConfigModelSettings
  modelSettings;

  /// The prompt definition. If not set, default prompt will be used.
  final String? prompt;

  /// Creates a new [ToolDataStoreToolModalityConfigRewriterConfig].
  /// [disabled] Whether the rewriter is disabled.
  /// [modelSettings] Model settings contains various configurations for the LLM model.
  /// [prompt] The prompt definition. If not set, default prompt will be used.
  ToolDataStoreToolModalityConfigRewriterConfig({
    this.disabled,
    required this.modelSettings,
    this.prompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'modelSettings': modelSettings.toMap(),
      'prompt': ?prompt,
    };
  }

  factory ToolDataStoreToolModalityConfigRewriterConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ToolDataStoreToolModalityConfigRewriterConfig(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      modelSettings:
          ToolDataStoreToolModalityConfigRewriterConfigModelSettings.fromMap(
            (map['modelSettings'] as Map).cast<String, dynamic>(),
          ),
      prompt: map['prompt'] == null ? null : map['prompt'] as String,
    );
  }
}
