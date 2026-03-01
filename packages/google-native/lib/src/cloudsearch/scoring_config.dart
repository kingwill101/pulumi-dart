// ignore_for_file: unused_element, unnecessary_cast

/// Scoring configurations for a source while processing a Search or Suggest request.
class ScoringConfig {
  /// Whether to use freshness as a ranking signal. By default, freshness is used as a ranking signal. Note that this setting is not available in the Admin UI.
  final bool? disableFreshness;

  /// Whether to personalize the results. By default, personal signals will be used to boost results.
  final bool? disablePersonalization;

  /// Creates a new [ScoringConfig].
  /// [disableFreshness] Whether to use freshness as a ranking signal. By default, freshness is used as a ranking signal. Note that this setting is not available in the Admin UI.
  /// [disablePersonalization] Whether to personalize the results. By default, personal signals will be used to boost results.
  ScoringConfig({this.disableFreshness, this.disablePersonalization});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableFreshness': ?disableFreshness,
      'disablePersonalization': ?disablePersonalization,
    };
  }

  factory ScoringConfig.fromMap(Map<String, dynamic> map) {
    return ScoringConfig(
      disableFreshness: map['disableFreshness'] == null
          ? null
          : map['disableFreshness'] as bool,
      disablePersonalization: map['disablePersonalization'] == null
          ? null
          : map['disablePersonalization'] as bool,
    );
  }
}
