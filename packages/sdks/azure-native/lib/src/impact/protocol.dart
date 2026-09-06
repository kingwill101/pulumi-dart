import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol used for the connection
enum Protocol implements pulumi.PulumiEnum<String> {
  tCP("TCP"),
  uDP("UDP"),
  hTTP("HTTP"),
  hTTPS("HTTPS"),
  rDP("RDP"),
  fTP("FTP"),
  sSH("SSH"),
  other("Other");

  const Protocol(this.wireValue);
  @override
  final String wireValue;

  static Protocol fromValue(String value) {
    for (final item in Protocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Protocol value: $value');
  }
}
