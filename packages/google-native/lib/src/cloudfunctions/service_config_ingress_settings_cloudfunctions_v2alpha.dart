/// The ingress settings for the function, controlling what traffic can reach it.
enum ServiceConfigIngressSettingsCloudfunctionsV2alpha {
  ingressSettingsUnspecified("INGRESS_SETTINGS_UNSPECIFIED"),
  allowAll("ALLOW_ALL"),
  allowInternalOnly("ALLOW_INTERNAL_ONLY"),
  allowInternalAndGclb("ALLOW_INTERNAL_AND_GCLB");

  const ServiceConfigIngressSettingsCloudfunctionsV2alpha(this.value);
  final String value;

  static ServiceConfigIngressSettingsCloudfunctionsV2alpha fromValue(
    String value,
  ) {
    for (final item
        in ServiceConfigIngressSettingsCloudfunctionsV2alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ServiceConfigIngressSettingsCloudfunctionsV2alpha value: $value',
    );
  }
}
