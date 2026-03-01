/// Unit of the metric ex: Bytes, Percentage, Count, Seconds, Milliseconds, Bytes/Second, Count/Second, etc.., Other
enum MetricUnit {
  byteSeconds("ByteSeconds"),
  bytes("Bytes"),
  bytesPerSecond("BytesPerSecond"),
  cores("Cores"),
  count("Count"),
  countPerSecond("CountPerSecond"),
  milliCores("MilliCores"),
  milliSeconds("MilliSeconds"),
  nanoCores("NanoCores"),
  percent("Percent"),
  seconds("Seconds"),
  other("Other");

  const MetricUnit(this.value);
  final String value;

  static MetricUnit fromValue(String value) {
    for (final item in MetricUnit.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricUnit value: $value');
  }
}

