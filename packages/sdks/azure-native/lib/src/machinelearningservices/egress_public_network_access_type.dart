/// If Enabled, allow egress public network access. If Disabled, this will create secure egress. Default: Enabled.
enum EgressPublicNetworkAccessType {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

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
