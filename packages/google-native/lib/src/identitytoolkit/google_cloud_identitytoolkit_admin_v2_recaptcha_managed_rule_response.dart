// ignore_for_file: unused_element, unnecessary_cast

/// The config for a reCAPTCHA managed rule. Models a single interval [start_score, end_score]. The start_score is implicit. It is either the closest smaller end_score (if one is available) or 0. Intervals in aggregate span [0, 1] without overlapping.
class GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse {
  /// The action taken if the reCAPTCHA score of a request is within the interval [start_score, end_score].
  final String action;

  /// The end score (inclusive) of the score range for an action. Must be a value between 0.0 and 1.0, at 11 discrete values; e.g. 0, 0.1, 0.2, 0.3, ... 0.9, 1.0. A score of 0.0 indicates the riskiest request (likely a bot), whereas 1.0 indicates the safest request (likely a human). See https://cloud.google.com/recaptcha-enterprise/docs/interpret-assessment.
  final double endScore;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse].
  /// [action] The action taken if the reCAPTCHA score of a request is within the interval [start_score, end_score].
  /// [endScore] The end score (inclusive) of the score range for an action. Must be a value between 0.0 and 1.0, at 11 discrete values; e.g. 0, 0.1, 0.2, 0.3, ... 0.9, 1.0. A score of 0.0 indicates the riskiest request (likely a bot), whereas 1.0 indicates the safest request (likely a human). See https://cloud.google.com/recaptcha-enterprise/docs/interpret-assessment.
  GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse({
    required this.action,
    required this.endScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'action': action, 'endScore': endScore};
  }

  factory GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse(
      action: map['action'] as String,
      endScore: map['endScore'] as double,
    );
  }
}
