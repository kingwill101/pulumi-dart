// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InsightSelector
class InsightSelector {
  /// The type of insight to log on a trail.
  final String? insightType;

  /// Creates a new [InsightSelector].
  /// [insightType] The type of insight to log on a trail.
  InsightSelector({
    this.insightType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insightType': ?insightType,
    };
  }

  factory InsightSelector.fromMap(Map<String, dynamic> map) {
    return InsightSelector(
      insightType: map['insightType'] == null ? null : map['insightType'] as String,
    );
  }
}

