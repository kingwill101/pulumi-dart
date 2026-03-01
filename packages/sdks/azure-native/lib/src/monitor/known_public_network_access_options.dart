/// The configuration to set whether network access from public internet to the endpoints are allowed.
enum KnownPublicNetworkAccessOptions {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueSecuredByPerimeter("SecuredByPerimeter");

  const KnownPublicNetworkAccessOptions(this.value);
  final String value;

  static KnownPublicNetworkAccessOptions fromValue(String value) {
    for (final item in KnownPublicNetworkAccessOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownPublicNetworkAccessOptions value: $value');
  }
}

