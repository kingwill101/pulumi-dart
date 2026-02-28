// ignore_for_file: unused_element, unnecessary_cast

import 'source_scoring_config_source_importance.dart';

/// Set the scoring configuration. This allows modifying the ranking of results for a source.
class SourceScoringConfig {
  /// Importance of the source.
  final SourceScoringConfigSourceImportance? sourceImportance;

  /// Creates a new [SourceScoringConfig].
  /// [sourceImportance] Importance of the source.
  SourceScoringConfig({
    this.sourceImportance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceImportance': ?sourceImportance == null ? null : sourceImportance!.value,
    };
  }

  factory SourceScoringConfig.fromMap(Map<String, dynamic> map) {
    return SourceScoringConfig(
      sourceImportance: map['sourceImportance'] == null ? null : SourceScoringConfigSourceImportance.fromValue(map['sourceImportance'] as String),
    );
  }
}

