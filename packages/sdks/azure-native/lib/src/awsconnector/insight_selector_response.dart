// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InsightSelector
class InsightSelectorResponse {
  /// The type of insight to log on a trail.
  final String? insightType;

  /// Creates a new [InsightSelectorResponse].
  /// [insightType] The type of insight to log on a trail.
  InsightSelectorResponse({
    this.insightType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insightType': ?insightType,
    };
  }

  factory InsightSelectorResponse.fromMap(Map<String, dynamic> map) {
    return InsightSelectorResponse(
      insightType: map['insightType'] == null ? null : map['insightType'] as String,
    );
  }
}

