/// If Enabled, allow egress public network access. If Disabled, this will create secure egress. Default: Enabled.
enum EgressPublicNetworkAccessType {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EgressPublicNetworkAccessType(this.value);
  final String value;

  static EgressPublicNetworkAccessType fromValue(String value) {
    for (final item in EgressPublicNetworkAccessType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EgressPublicNetworkAccessType value: $value');
  }
}

