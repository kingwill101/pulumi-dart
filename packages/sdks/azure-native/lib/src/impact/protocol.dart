/// Protocol used for the connection
enum Protocol {
  tCP("TCP"),
  uDP("UDP"),
  hTTP("HTTP"),
  hTTPS("HTTPS"),
  rDP("RDP"),
  fTP("FTP"),
  sSH("SSH"),
  other("Other");

  const Protocol(this.wireValue);
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

