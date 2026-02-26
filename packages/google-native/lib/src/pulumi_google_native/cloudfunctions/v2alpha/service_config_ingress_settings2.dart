/// The ingress settings for the function, controlling what traffic can reach it.
enum ServiceConfigIngressSettings2 {
  ingressSettingsUnspecified("INGRESS_SETTINGS_UNSPECIFIED"),
  allowAll("ALLOW_ALL"),
  allowInternalOnly("ALLOW_INTERNAL_ONLY"),
  allowInternalAndGclb("ALLOW_INTERNAL_AND_GCLB");

  const ServiceConfigIngressSettings2(this.value);
  final String value;

  static ServiceConfigIngressSettings2 fromValue(String value) {
    for (final item in ServiceConfigIngressSettings2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceConfigIngressSettings2 value: $value');
  }
}
