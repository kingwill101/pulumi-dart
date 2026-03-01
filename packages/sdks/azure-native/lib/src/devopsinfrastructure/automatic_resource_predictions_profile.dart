// ignore_for_file: unused_element, unnecessary_cast


/// The stand-by agent scheme is determined based on historical demand.
class AutomaticResourcePredictionsProfile {
  /// Determines how the stand-by scheme should be provided.
  /// Expected value is 'Automatic'.
  final String kind;
  /// Determines the balance between cost and performance.
  final String? predictionPreference;

  /// Creates a new [AutomaticResourcePredictionsProfile].
  /// [kind] Determines how the stand-by scheme should be provided.
  /// [predictionPreference] Determines the balance between cost and performance.
  AutomaticResourcePredictionsProfile({
    required this.kind,
    this.predictionPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'predictionPreference': ?predictionPreference,
    };
  }

  factory AutomaticResourcePredictionsProfile.fromMap(Map<String, dynamic> map) {
    return AutomaticResourcePredictionsProfile(
      kind: map['kind'] as String,
      predictionPreference: map['predictionPreference'] == null ? null : map['predictionPreference'] as String,
    );
  }
}

