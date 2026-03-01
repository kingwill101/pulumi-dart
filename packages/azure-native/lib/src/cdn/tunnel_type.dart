/// Protocol this tunnel will use for allowing traffic to backends.
enum TunnelType {
  valueHttpConnect("HttpConnect");

  const TunnelType(this.value);
  final String value;

  static TunnelType fromValue(String value) {
    for (final item in TunnelType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TunnelType value: $value');
  }
}

