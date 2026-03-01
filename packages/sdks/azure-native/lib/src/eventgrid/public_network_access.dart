/// This determines if traffic is allowed over public network. By default it is enabled.
/// You can further restrict to specific IPs by configuring <seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.TopicProperties.InboundIpRules" />
enum PublicNetworkAccess {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccess(this.value);
  final String value;

  static PublicNetworkAccess fromValue(String value) {
    for (final item in PublicNetworkAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccess value: $value');
  }
}

