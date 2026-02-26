// ignore_for_file: unused_element, unnecessary_cast

/// Options for user acceptance testing.
class GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse {
  /// Optional. For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if CHALLENGE.
  final String testingChallenge;

  /// Optional. All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive.
  final double testingScore;

  GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse({
    required this.testingChallenge,
    required this.testingScore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['testingChallenge'] = testingChallenge;
    map['testingScore'] = testingScore;
    return map;
  }

  factory GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse(
      testingChallenge: map['testingChallenge'] as String,
      testingScore: map['testingScore'] as double,
    );
  }
}
