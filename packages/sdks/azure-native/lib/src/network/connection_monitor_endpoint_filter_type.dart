/// The behavior of the endpoint filter. Currently only 'Include' is supported.
enum ConnectionMonitorEndpointFilterType {
  valueInclude("Include");

  const ConnectionMonitorEndpointFilterType(this.value);
  final String value;

  static ConnectionMonitorEndpointFilterType fromValue(String value) {
    for (final item in ConnectionMonitorEndpointFilterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionMonitorEndpointFilterType value: $value');
  }
}

