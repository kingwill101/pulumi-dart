// ignore_for_file: unused_element, unnecessary_cast


/// Resiliency Recommendation details
class GatewayResiliencyRecommendationResponse {
  /// Link to the public documentation for the associated recommendation
  final String? callToActionLink;
  /// Acton items to apply the recommendation
  final String? callToActionText;
  /// Recommendation Id
  final String? recommendationId;
  /// Recommendation details
  final String? recommendationText;
  /// Recommendation Title
  final String? recommendationTitle;
  /// Impact associated with the recommendation
  final String? severity;

  /// Creates a new [GatewayResiliencyRecommendationResponse].
  /// [callToActionLink] Link to the public documentation for the associated recommendation
  /// [callToActionText] Acton items to apply the recommendation
  /// [recommendationId] Recommendation Id
  /// [recommendationText] Recommendation details
  /// [recommendationTitle] Recommendation Title
  /// [severity] Impact associated with the recommendation
  GatewayResiliencyRecommendationResponse({
    this.callToActionLink,
    this.callToActionText,
    this.recommendationId,
    this.recommendationText,
    this.recommendationTitle,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callToActionLink': ?callToActionLink,
      'callToActionText': ?callToActionText,
      'recommendationId': ?recommendationId,
      'recommendationText': ?recommendationText,
      'recommendationTitle': ?recommendationTitle,
      'severity': ?severity,
    };
  }

  factory GatewayResiliencyRecommendationResponse.fromMap(Map<String, dynamic> map) {
    return GatewayResiliencyRecommendationResponse(
      callToActionLink: map['callToActionLink'] == null ? null : map['callToActionLink'] as String,
      callToActionText: map['callToActionText'] == null ? null : map['callToActionText'] as String,
      recommendationId: map['recommendationId'] == null ? null : map['recommendationId'] as String,
      recommendationText: map['recommendationText'] == null ? null : map['recommendationText'] as String,
      recommendationTitle: map['recommendationTitle'] == null ? null : map['recommendationTitle'] as String,
      severity: map['severity'] == null ? null : map['severity'] as String,
    );
  }
}

