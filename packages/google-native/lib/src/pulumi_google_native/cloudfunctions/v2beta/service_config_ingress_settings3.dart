/// The ingress settings for the function, controlling what traffic can reach it.
enum ServiceConfigIngressSettings3 {
  ingressSettingsUnspecified("INGRESS_SETTINGS_UNSPECIFIED"),
  allowAll("ALLOW_ALL"),
  allowInternalOnly("ALLOW_INTERNAL_ONLY"),
  allowInternalAndGclb("ALLOW_INTERNAL_AND_GCLB");

  const ServiceConfigIngressSettings3(this.value);
  final String value;

  static ServiceConfigIngressSettings3 fromValue(String value) {
    for (final item in ServiceConfigIngressSettings3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceConfigIngressSettings3 value: $value');
  }
}
