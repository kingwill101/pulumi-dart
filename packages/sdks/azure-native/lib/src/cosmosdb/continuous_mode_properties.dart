// ignore_for_file: unused_element, unnecessary_cast


/// Configuration values for periodic mode backup
class ContinuousModeProperties {
  /// Enum to indicate type of Continuous backup mode
  final String? tier;

  /// Creates a new [ContinuousModeProperties].
  /// [tier] Enum to indicate type of Continuous backup mode
  ContinuousModeProperties({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory ContinuousModeProperties.fromMap(Map<String, dynamic> map) {
    return ContinuousModeProperties(
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

