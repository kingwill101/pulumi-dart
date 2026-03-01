/// Is package timestamped so it can ignore the certificate expiry date
enum PackageTimestamped {
  valueTimestamped("Timestamped"),
  valueNotTimestamped("NotTimestamped");

  const PackageTimestamped(this.value);
  final String value;

  static PackageTimestamped fromValue(String value) {
    for (final item in PackageTimestamped.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageTimestamped value: $value');
  }
}

