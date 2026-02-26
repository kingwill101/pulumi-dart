// ignore_for_file: unused_element, unnecessary_cast

import 'source_crowding_config_response.dart';
import 'source_response5.dart';
import 'source_scoring_config_response.dart';

/// Configurations for a source while processing a Search or Suggest request.
class SourceConfigResponse {
  /// The crowding configuration for the source.
  final SourceCrowdingConfigResponse crowdingConfig;

  /// The scoring configuration for the source.
  final SourceScoringConfigResponse scoringConfig;

  /// The source for which this configuration is to be used.
  final SourceResponse5 source;

  SourceConfigResponse({
    required this.crowdingConfig,
    required this.scoringConfig,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['crowdingConfig'] = crowdingConfig.toMap();
    map['scoringConfig'] = scoringConfig.toMap();
    map['source'] = source.toMap();
    return map;
  }

  factory SourceConfigResponse.fromMap(Map<String, dynamic> map) {
    return SourceConfigResponse(
      crowdingConfig: SourceCrowdingConfigResponse.fromMap(
          (map['crowdingConfig'] as Map).cast<String, dynamic>()),
      scoringConfig: SourceScoringConfigResponse.fromMap(
          (map['scoringConfig'] as Map).cast<String, dynamic>()),
      source: SourceResponse5.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
