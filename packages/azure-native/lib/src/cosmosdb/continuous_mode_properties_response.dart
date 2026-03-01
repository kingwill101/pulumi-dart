// ignore_for_file: unused_element, unnecessary_cast


/// Configuration values for periodic mode backup
class ContinuousModePropertiesResponse {
  /// Enum to indicate type of Continuous backup mode
  final String? tier;

  /// Creates a new [ContinuousModePropertiesResponse].
  /// [tier] Enum to indicate type of Continuous backup mode
  ContinuousModePropertiesResponse({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory ContinuousModePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ContinuousModePropertiesResponse(
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

