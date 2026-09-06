import 'package:pulumi/pulumi.dart' as pulumi;

/// Advertise Mode
enum AdvertiseMode implements pulumi.PulumiEnum<String> {
  aRP("ARP"),
  bGP("BGP"),
  both("Both");

  const AdvertiseMode(this.wireValue);
  @override
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
