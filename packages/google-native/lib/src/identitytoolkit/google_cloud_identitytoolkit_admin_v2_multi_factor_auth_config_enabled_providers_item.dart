enum GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem {
  providerUnspecified("PROVIDER_UNSPECIFIED"),
  phoneSms("PHONE_SMS");

  const GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem(
      this.value);
  final String value;

  static GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem
      fromValue(String value) {
    for (final item
        in GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem value: $value');
  }
}
