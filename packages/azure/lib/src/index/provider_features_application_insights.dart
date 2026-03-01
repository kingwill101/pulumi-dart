// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesApplicationInsights {
  final bool? disableGeneratedRule;

  /// Creates a new [ProviderFeaturesApplicationInsights].
  /// [disableGeneratedRule] Optional.
  ProviderFeaturesApplicationInsights({
    this.disableGeneratedRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableGeneratedRule': ?disableGeneratedRule,
    };
  }

  factory ProviderFeaturesApplicationInsights.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesApplicationInsights(
      disableGeneratedRule: map['disableGeneratedRule'] == null ? null : map['disableGeneratedRule'] as bool,
    );
  }
}

