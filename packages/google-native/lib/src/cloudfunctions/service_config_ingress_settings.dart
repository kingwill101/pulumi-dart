/// The ingress settings for the function, controlling what traffic can reach it.
enum ServiceConfigIngressSettings {
  ingressSettingsUnspecified("INGRESS_SETTINGS_UNSPECIFIED"),
  allowAll("ALLOW_ALL"),
  allowInternalOnly("ALLOW_INTERNAL_ONLY"),
  allowInternalAndGclb("ALLOW_INTERNAL_AND_GCLB");

  const ServiceConfigIngressSettings(this.value);
  final String value;

  static ServiceConfigIngressSettings fromValue(String value) {
    for (final item in ServiceConfigIngressSettings.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceConfigIngressSettings value: $value');
  }
}
