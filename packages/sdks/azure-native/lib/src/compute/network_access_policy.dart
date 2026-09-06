import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy for accessing the disk via network.
enum NetworkAccessPolicy implements pulumi.PulumiEnum<String> {
  allowAll("AllowAll"),
  allowPrivate("AllowPrivate"),
  denyAll("DenyAll");

  const NetworkAccessPolicy(this.wireValue);
  @override
  final String wireValue;

  static NetworkAccessPolicy fromValue(String value) {
    for (final item in NetworkAccessPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkAccessPolicy value: $value');
  }
}
