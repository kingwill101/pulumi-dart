/// The protocol of the stream
enum StreamProtocol {
  valueUDP("UDP"),
  valueSRT("SRT"),
  valueRTP("RTP");

  const StreamProtocol(this.value);
  final String value;

  static StreamProtocol fromValue(String value) {
    for (final item in StreamProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StreamProtocol value: $value');
  }
}

