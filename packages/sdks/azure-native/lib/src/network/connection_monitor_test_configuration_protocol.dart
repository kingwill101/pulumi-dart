/// The protocol to use in test evaluation.
enum ConnectionMonitorTestConfigurationProtocol {
  valueTcp("Tcp"),
  valueHttp("Http"),
  valueIcmp("Icmp");

  const ConnectionMonitorTestConfigurationProtocol(this.wireValue);
  final String wireValue;

  static ConnectionMonitorTestConfigurationProtocol fromValue(String value) {
    for (final item in ConnectionMonitorTestConfigurationProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionMonitorTestConfigurationProtocol value: $value');
  }
}

