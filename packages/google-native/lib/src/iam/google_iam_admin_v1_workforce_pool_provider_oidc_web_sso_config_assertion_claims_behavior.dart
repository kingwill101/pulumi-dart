/// Required. The behavior for how OIDC Claims are included in the `assertion` object used for attribute mapping and attribute condition.
enum GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigAssertionClaimsBehavior {
  assertionClaimsBehaviorUnspecified("ASSERTION_CLAIMS_BEHAVIOR_UNSPECIFIED"),
  mergeUserInfoOverIdTokenClaims("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"),
  onlyIdTokenClaims("ONLY_ID_TOKEN_CLAIMS");

  const GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigAssertionClaimsBehavior(
    this.value,
  );
  final String value;

  static GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigAssertionClaimsBehavior
  fromValue(String value) {
    for (final item
        in GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigAssertionClaimsBehavior
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigAssertionClaimsBehavior value: $value',
    );
  }
}
