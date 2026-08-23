/// The protocol of the stream
enum StreamProtocol {
  valueUDP("UDP"),
  valueSRT("SRT"),
  valueRTP("RTP");

  const StreamProtocol(this.wireValue);
  final String wireValue;

  static StreamProtocol fromValue(String value) {
    for (final item in StreamProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StreamProtocol value: $value');
  }
}
