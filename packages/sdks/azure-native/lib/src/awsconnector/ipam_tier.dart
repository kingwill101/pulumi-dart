import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum IpamTier implements pulumi.PulumiEnum<String> {
  advanced("advanced"),
  free("free");

  const IpamTier(this.wireValue);
  @override
  final String wireValue;

  static IpamTier fromValue(String value) {
    for (final item in IpamTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpamTier value: $value');
  }
}
