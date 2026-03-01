// ignore_for_file: unused_element, unnecessary_cast


/// Customer provides the stand-by agent scheme.
class ManualResourcePredictionsProfileResponse {
  /// Determines how the stand-by scheme should be provided.
  /// Expected value is 'Manual'.
  final String kind;

  /// Creates a new [ManualResourcePredictionsProfileResponse].
  /// [kind] Determines how the stand-by scheme should be provided.
  ManualResourcePredictionsProfileResponse({
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
    };
  }

  factory ManualResourcePredictionsProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManualResourcePredictionsProfileResponse(
      kind: map['kind'] as String,
    );
  }
}

