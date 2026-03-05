/// Is package timestamped so it can ignore the certificate expiry date
enum PackageTimestamped {
  valueTimestamped("Timestamped"),
  valueNotTimestamped("NotTimestamped");

  const PackageTimestamped(this.wireValue);
  final String wireValue;

  static PackageTimestamped fromValue(String value) {
    for (final item in PackageTimestamped.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageTimestamped value: $value');
  }
}

