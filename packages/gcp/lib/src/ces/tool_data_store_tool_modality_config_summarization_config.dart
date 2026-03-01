// ignore_for_file: unused_element, unnecessary_cast

import 'tool_data_store_tool_modality_config_summarization_config_model_settings.dart';

class ToolDataStoreToolModalityConfigSummarizationConfig {
  /// Whether summarization is disabled.
  final bool? disabled;

  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final ToolDataStoreToolModalityConfigSummarizationConfigModelSettings?
  modelSettings;

  /// The prompt definition. If not set, default prompt will be used.
  final String? prompt;

  /// Creates a new [ToolDataStoreToolModalityConfigSummarizationConfig].
  /// [disabled] Whether summarization is disabled.
  /// [modelSettings] Model settings contains various configurations for the LLM model.
  /// [prompt] The prompt definition. If not set, default prompt will be used.
  ToolDataStoreToolModalityConfigSummarizationConfig({
    this.disabled,
    this.modelSettings,
    this.prompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'modelSettings': ?modelSettings == null ? null : modelSettings!.toMap(),
      'prompt': ?prompt,
    };
  }

  factory ToolDataStoreToolModalityConfigSummarizationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ToolDataStoreToolModalityConfigSummarizationConfig(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      modelSettings: map['modelSettings'] == null
          ? null
          : ToolDataStoreToolModalityConfigSummarizationConfigModelSettings.fromMap(
              (map['modelSettings'] as Map).cast<String, dynamic>(),
            ),
      prompt: map['prompt'] == null ? null : map['prompt'] as String,
    );
  }
}
