/// The status of the endpoint. If the endpoint is Enabled, it is probed for endpoint health and is included in the traffic routing method.
enum EndpointStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const EndpointStatus(this.value);
  final String value;

  static EndpointStatus fromValue(String value) {
    for (final item in EndpointStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointStatus value: $value');
  }
}

