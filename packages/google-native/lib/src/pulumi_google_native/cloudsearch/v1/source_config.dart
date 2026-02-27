// ignore_for_file: unused_element, unnecessary_cast

import 'source_cloudsearch_v1.dart';
import 'source_crowding_config.dart';
import 'source_scoring_config.dart';

/// Configurations for a source while processing a Search or Suggest request.
class SourceConfig {
  /// The crowding configuration for the source.
  final SourceCrowdingConfig? crowdingConfig;

  /// The scoring configuration for the source.
  final SourceScoringConfig? scoringConfig;

  /// The source for which this configuration is to be used.
  final SourceCloudsearchV1? source;

  SourceConfig({
    this.crowdingConfig,
    this.scoringConfig,
    this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final crowdingConfigValue = crowdingConfig;
    if (crowdingConfigValue != null) {
      map['crowdingConfig'] = crowdingConfigValue.toMap();
    }
    final scoringConfigValue = scoringConfig;
    if (scoringConfigValue != null) {
      map['scoringConfig'] = scoringConfigValue.toMap();
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue.toMap();
    }
    return map;
  }

  factory SourceConfig.fromMap(Map<String, dynamic> map) {
    return SourceConfig(
      crowdingConfig: map['crowdingConfig'] == null
          ? null
          : SourceCrowdingConfig.fromMap(
              (map['crowdingConfig'] as Map).cast<String, dynamic>()),
      scoringConfig: map['scoringConfig'] == null
          ? null
          : SourceScoringConfig.fromMap(
              (map['scoringConfig'] as Map).cast<String, dynamic>()),
      source: map['source'] == null
          ? null
          : SourceCloudsearchV1.fromMap(
              (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
