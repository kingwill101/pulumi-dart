// ignore_for_file: unused_element, unnecessary_cast


/// Customer provides the stand-by agent scheme.
class ManualResourcePredictionsProfile {
  /// Determines how the stand-by scheme should be provided.
  /// Expected value is 'Manual'.
  final String kind;

  /// Creates a new [ManualResourcePredictionsProfile].
  /// [kind] Determines how the stand-by scheme should be provided.
  ManualResourcePredictionsProfile({
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
    };
  }

  factory ManualResourcePredictionsProfile.fromMap(Map<String, dynamic> map) {
    return ManualResourcePredictionsProfile(
      kind: map['kind'] as String,
    );
  }
}

