// ignore_for_file: unused_element, unnecessary_cast

/// Redirects a shopper to a specific page. * Rule Condition: Must specify Condition.query_terms. * Action Input: Request Query * Action Result: Redirects shopper to provided uri.
class GoogleCloudRetailV2betaRuleRedirectActionResponse {
  /// URL must have length equal or less than 2000 characters.
  final String redirectUri;

  /// Creates a new [GoogleCloudRetailV2betaRuleRedirectActionResponse].
  /// [redirectUri] URL must have length equal or less than 2000 characters.
  GoogleCloudRetailV2betaRuleRedirectActionResponse({
    required this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['redirectUri'] = redirectUri;
    return map;
  }

  factory GoogleCloudRetailV2betaRuleRedirectActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaRuleRedirectActionResponse(
      redirectUri: map['redirectUri'] as String,
    );
  }
}
