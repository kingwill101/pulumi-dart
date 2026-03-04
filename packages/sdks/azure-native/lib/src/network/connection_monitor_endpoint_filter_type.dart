/// The behavior of the endpoint filter. Currently only 'Include' is supported.
enum ConnectionMonitorEndpointFilterType {
  valueInclude("Include");

  const ConnectionMonitorEndpointFilterType(this.wireValue);
  final String wireValue;

  static ConnectionMonitorEndpointFilterType fromValue(String value) {
    for (final item in ConnectionMonitorEndpointFilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ConnectionMonitorEndpointFilterType value: $value',
    );
  }
}
