// ignore_for_file: unused_element, unnecessary_cast


class GetBaselinesBaseline {
  /// Baseline ID
  final String baselineId;
  /// Baseline Name.
  final String baselineName;
  /// Baseline Description.
  final String description;

  /// Creates a new [GetBaselinesBaseline].
  /// [baselineId] Baseline ID
  /// [baselineName] Baseline Name.
  /// [description] Baseline Description.
  GetBaselinesBaseline({
    required this.baselineId,
    required this.baselineName,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineId': baselineId,
      'baselineName': baselineName,
      'description': description,
    };
  }

  factory GetBaselinesBaseline.fromMap(Map<String, dynamic> map) {
    return GetBaselinesBaseline(
      baselineId: map['baselineId'] as String,
      baselineName: map['baselineName'] as String,
      description: map['description'] as String,
    );
  }
}

