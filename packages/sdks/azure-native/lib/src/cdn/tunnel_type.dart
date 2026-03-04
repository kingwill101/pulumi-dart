/// Protocol this tunnel will use for allowing traffic to backends.
enum TunnelType {
  valueHttpConnect("HttpConnect");

  const TunnelType(this.wireValue);
  final String wireValue;

  static TunnelType fromValue(String value) {
    for (final item in TunnelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TunnelType value: $value');
  }
}
