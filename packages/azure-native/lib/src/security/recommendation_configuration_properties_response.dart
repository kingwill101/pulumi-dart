// ignore_for_file: unused_element, unnecessary_cast


/// The type of IoT Security recommendation.
class RecommendationConfigurationPropertiesResponse {
  final String name;
  /// The type of IoT Security recommendation.
  final String recommendationType;
  /// Recommendation status. When the recommendation status is disabled recommendations are not generated.
  final String status;

  /// Creates a new [RecommendationConfigurationPropertiesResponse].
  /// [name] Required.
  /// [recommendationType] The type of IoT Security recommendation.
  /// [status] Recommendation status. When the recommendation status is disabled recommendations are not generated.
  RecommendationConfigurationPropertiesResponse({
    required this.name,
    required this.recommendationType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'recommendationType': recommendationType,
      'status': status,
    };
  }

  factory RecommendationConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RecommendationConfigurationPropertiesResponse(
      name: map['name'] as String,
      recommendationType: map['recommendationType'] as String,
      status: map['status'] as String,
    );
  }
}

