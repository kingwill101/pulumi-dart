// ignore_for_file: unused_element, unnecessary_cast

/// Redirects a shopper to a specific page. * Rule Condition: Must specify Condition.query_terms. * Action Input: Request Query * Action Result: Redirects shopper to provided uri.
class GoogleCloudRetailV2alphaRuleRedirectAction {
  /// URL must have length equal or less than 2000 characters.
  final String? redirectUri;

  GoogleCloudRetailV2alphaRuleRedirectAction({
    this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final redirectUriValue = redirectUri;
    if (redirectUriValue != null) {
      map['redirectUri'] = redirectUriValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2alphaRuleRedirectAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaRuleRedirectAction(
      redirectUri:
          map['redirectUri'] == null ? null : map['redirectUri'] as String,
    );
  }
}
