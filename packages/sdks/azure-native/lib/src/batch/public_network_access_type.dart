/// The network access type for operating on the resources in the Batch account.
enum PublicNetworkAccessType {
  enabled("Enabled"),
  disabled("Disabled"),
  securedByPerimeter("SecuredByPerimeter");

  const PublicNetworkAccessType(this.wireValue);
  final String wireValue;

  static PublicNetworkAccessType fromValue(String value) {
    for (final item in PublicNetworkAccessType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessType value: $value');
  }
}
