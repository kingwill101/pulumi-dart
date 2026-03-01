// ignore_for_file: unused_element, unnecessary_cast

import 'source_crowding_config_response.dart';
import 'source_response.dart';
import 'source_scoring_config_response.dart';

/// Configurations for a source while processing a Search or Suggest request.
class SourceConfigResponse {
  /// The crowding configuration for the source.
  final SourceCrowdingConfigResponse crowdingConfig;

  /// The scoring configuration for the source.
  final SourceScoringConfigResponse scoringConfig;

  /// The source for which this configuration is to be used.
  final SourceResponse source;

  /// Creates a new [SourceConfigResponse].
  /// [crowdingConfig] The crowding configuration for the source.
  /// [scoringConfig] The scoring configuration for the source.
  /// [source] The source for which this configuration is to be used.
  SourceConfigResponse({
    required this.crowdingConfig,
    required this.scoringConfig,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crowdingConfig': crowdingConfig.toMap(),
      'scoringConfig': scoringConfig.toMap(),
      'source': source.toMap(),
    };
  }

  factory SourceConfigResponse.fromMap(Map<String, dynamic> map) {
    return SourceConfigResponse(
      crowdingConfig: SourceCrowdingConfigResponse.fromMap(
        (map['crowdingConfig'] as Map).cast<String, dynamic>(),
      ),
      scoringConfig: SourceScoringConfigResponse.fromMap(
        (map['scoringConfig'] as Map).cast<String, dynamic>(),
      ),
      source: SourceResponse.fromMap(
        (map['source'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
