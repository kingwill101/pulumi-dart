/// Indicates whether the local volume is the source or destination for the Volume Replication
enum EndpointType {
  valueSrc("src"),
  valueDst("dst");

  const EndpointType(this.value);
  final String value;

  static EndpointType fromValue(String value) {
    for (final item in EndpointType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointType value: $value');
  }
}

