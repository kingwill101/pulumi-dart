/// Enum to determine whether PublicNetworkAccess is Enabled or Disabled for egress of a deployment.
enum EgressPublicNetworkAccessType {
  enabled("Enabled"),
  disabled("Disabled");

  const EgressPublicNetworkAccessType(this.wireValue);
  final String wireValue;

  static EgressPublicNetworkAccessType fromValue(String value) {
    for (final item in EgressPublicNetworkAccessType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EgressPublicNetworkAccessType value: $value');
  }
}
