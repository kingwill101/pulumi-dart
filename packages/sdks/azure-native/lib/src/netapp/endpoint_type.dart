/// Indicates whether the local volume is the source or destination for the Volume Replication
enum EndpointType {
  valueSrc("src"),
  valueDst("dst");

  const EndpointType(this.wireValue);
  final String wireValue;

  static EndpointType fromValue(String value) {
    for (final item in EndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointType value: $value');
  }
}
