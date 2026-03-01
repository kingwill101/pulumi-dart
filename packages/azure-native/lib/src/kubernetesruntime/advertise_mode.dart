/// Advertise Mode
enum AdvertiseMode {
  aRP("ARP"),
  bGP("BGP"),
  both("Both");

  const AdvertiseMode(this.value);
  final String value;

  static AdvertiseMode fromValue(String value) {
    for (final item in AdvertiseMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdvertiseMode value: $value');
  }
}

