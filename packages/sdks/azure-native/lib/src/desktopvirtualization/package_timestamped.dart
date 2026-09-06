import 'package:pulumi/pulumi.dart' as pulumi;

/// Is package timestamped so it can ignore the certificate expiry date
enum PackageTimestamped implements pulumi.PulumiEnum<String> {
  valueTimestamped("Timestamped"),
  valueNotTimestamped("NotTimestamped");

  const PackageTimestamped(this.wireValue);
  @override
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
