// ignore_for_file: unused_element, unnecessary_cast

import 'tool_data_store_tool_modality_config_grounding_config.dart';
import 'tool_data_store_tool_modality_config_rewriter_config.dart';
import 'tool_data_store_tool_modality_config_summarization_config.dart';

class ToolDataStoreToolModalityConfig {
  /// Grounding configuration.
  /// Structure is documented below.
  final ToolDataStoreToolModalityConfigGroundingConfig? groundingConfig;

  /// The modality type.
  /// Possible values:
  /// TEXT
  /// AUDIO
  final String modalityType;

  /// Rewriter configuration.
  /// Structure is documented below.
  final ToolDataStoreToolModalityConfigRewriterConfig? rewriterConfig;

  /// Summarization configuration.
  /// Structure is documented below.
  final ToolDataStoreToolModalityConfigSummarizationConfig? summarizationConfig;

  /// Creates a new [ToolDataStoreToolModalityConfig].
  /// [groundingConfig] Grounding configuration.
  /// [modalityType] The modality type.
  /// [rewriterConfig] Rewriter configuration.
  /// [summarizationConfig] Summarization configuration.
  ToolDataStoreToolModalityConfig({
    this.groundingConfig,
    required this.modalityType,
    this.rewriterConfig,
    this.summarizationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groundingConfig': ?groundingConfig == null
          ? null
          : groundingConfig!.toMap(),
      'modalityType': modalityType,
      'rewriterConfig': ?rewriterConfig == null
          ? null
          : rewriterConfig!.toMap(),
      'summarizationConfig': ?summarizationConfig == null
          ? null
          : summarizationConfig!.toMap(),
    };
  }

  factory ToolDataStoreToolModalityConfig.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolModalityConfig(
      groundingConfig: map['groundingConfig'] == null
          ? null
          : ToolDataStoreToolModalityConfigGroundingConfig.fromMap(
              (map['groundingConfig'] as Map).cast<String, dynamic>(),
            ),
      modalityType: map['modalityType'] as String,
      rewriterConfig: map['rewriterConfig'] == null
          ? null
          : ToolDataStoreToolModalityConfigRewriterConfig.fromMap(
              (map['rewriterConfig'] as Map).cast<String, dynamic>(),
            ),
      summarizationConfig: map['summarizationConfig'] == null
          ? null
          : ToolDataStoreToolModalityConfigSummarizationConfig.fromMap(
              (map['summarizationConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
