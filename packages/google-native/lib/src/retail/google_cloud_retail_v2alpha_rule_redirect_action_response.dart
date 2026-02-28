// ignore_for_file: unused_element, unnecessary_cast

/// Redirects a shopper to a specific page. * Rule Condition: Must specify Condition.query_terms. * Action Input: Request Query * Action Result: Redirects shopper to provided uri.
class GoogleCloudRetailV2alphaRuleRedirectActionResponse {
  /// URL must have length equal or less than 2000 characters.
  final String redirectUri;

  /// Creates a new [GoogleCloudRetailV2alphaRuleRedirectActionResponse].
  /// [redirectUri] URL must have length equal or less than 2000 characters.
  GoogleCloudRetailV2alphaRuleRedirectActionResponse({
    required this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['redirectUri'] = redirectUri;
    return map;
  }

  factory GoogleCloudRetailV2alphaRuleRedirectActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaRuleRedirectActionResponse(
      redirectUri: map['redirectUri'] as String,
    );
  }
}
