/// Advertise Mode
enum AdvertiseMode {
  aRP("ARP"),
  bGP("BGP"),
  both("Both");

  const AdvertiseMode(this.wireValue);
  final String wireValue;

  static AdvertiseMode fromValue(String value) {
    for (final item in AdvertiseMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdvertiseMode value: $value');
  }
}

