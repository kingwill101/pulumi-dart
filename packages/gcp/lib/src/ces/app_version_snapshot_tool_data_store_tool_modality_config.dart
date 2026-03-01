// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_modality_config_grounding_config.dart';
import 'app_version_snapshot_tool_data_store_tool_modality_config_rewriter_config.dart';
import 'app_version_snapshot_tool_data_store_tool_modality_config_summarization_config.dart';

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
    AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig
  >?
  summarizationConfigs;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolModalityConfig].
  /// [groundingConfigs] (Output)
  /// [modalityType] (Output)
  /// [rewriterConfigs] (Output)
  /// [summarizationConfigs] (Output)
  AppVersionSnapshotToolDataStoreToolModalityConfig({
    this.groundingConfigs,
    this.modalityType,
    this.rewriterConfigs,
    this.summarizationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groundingConfigs': ?groundingConfigs == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotToolDataStoreToolModalityConfigGroundingConfig,
              Map<String, dynamic>
            >(groundingConfigs!, (value) => value.toMap()),
      'modalityType': ?modalityType,
      'rewriterConfigs': ?rewriterConfigs == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig,
              Map<String, dynamic>
            >(rewriterConfigs!, (value) => value.toMap()),
      'summarizationConfigs': ?summarizationConfigs == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig,
              Map<String, dynamic>
            >(summarizationConfigs!, (value) => value.toMap()),
    };
  }

  factory AppVersionSnapshotToolDataStoreToolModalityConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotToolDataStoreToolModalityConfig(
      groundingConfigs: map['groundingConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotToolDataStoreToolModalityConfigGroundingConfig
            >(
              map['groundingConfigs'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolModalityConfigGroundingConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      modalityType: map['modalityType'] == null
          ? null
          : map['modalityType'] as String,
      rewriterConfigs: map['rewriterConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig
            >(
              map['rewriterConfigs'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      summarizationConfigs: map['summarizationConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig
            >(
              map['summarizationConfigs'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
