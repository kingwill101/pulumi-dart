// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_version_snapshot_tool_data_store_tool_modality_config_grounding_config/app_version_snapshot_tool_data_store_tool_modality_config_grounding_config.dart';
import '../app_version_snapshot_tool_data_store_tool_modality_config_rewriter_config/app_version_snapshot_tool_data_store_tool_modality_config_rewriter_config.dart';
import '../app_version_snapshot_tool_data_store_tool_modality_config_summarization_config/app_version_snapshot_tool_data_store_tool_modality_config_summarization_config.dart';

class AppVersionSnapshotToolDataStoreToolModalityConfig {
  /// (Output)
  /// Grounding configuration.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolDataStoreToolModalityConfigGroundingConfig>?
      groundingConfigs;

  /// (Output)
  /// The modality type.
  /// Possible values:
  /// TEXT
  /// AUDIO
  final String? modalityType;

  /// (Output)
  /// Rewriter configuration.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig>?
      rewriterConfigs;

  /// (Output)
  /// Summarization configuration.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig>?
      summarizationConfigs;

  AppVersionSnapshotToolDataStoreToolModalityConfig({
    this.groundingConfigs,
    this.modalityType,
    this.rewriterConfigs,
    this.summarizationConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groundingConfigsValue = groundingConfigs;
    if (groundingConfigsValue != null) {
      map['groundingConfigs'] = pulumi.Input.encodeList<
              AppVersionSnapshotToolDataStoreToolModalityConfigGroundingConfig,
              Map<String, dynamic>>(
          groundingConfigsValue, (value) => value.toMap());
    }
    final modalityTypeValue = modalityType;
    if (modalityTypeValue != null) {
      map['modalityType'] = modalityTypeValue;
    }
    final rewriterConfigsValue = rewriterConfigs;
    if (rewriterConfigsValue != null) {
      map['rewriterConfigs'] = pulumi.Input.encodeList<
          AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig,
          Map<String, dynamic>>(rewriterConfigsValue, (value) => value.toMap());
    }
    final summarizationConfigsValue = summarizationConfigs;
    if (summarizationConfigsValue != null) {
      map['summarizationConfigs'] = pulumi.Input.encodeList<
          AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig,
          Map<String,
              dynamic>>(summarizationConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotToolDataStoreToolModalityConfig.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolModalityConfig(
      groundingConfigs: map['groundingConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotToolDataStoreToolModalityConfigGroundingConfig>(
              map['groundingConfigs'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolModalityConfigGroundingConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      modalityType:
          map['modalityType'] == null ? null : map['modalityType'] as String,
      rewriterConfigs: map['rewriterConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig>(
              map['rewriterConfigs'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      summarizationConfigs: map['summarizationConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig>(
              map['summarizationConfigs'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
