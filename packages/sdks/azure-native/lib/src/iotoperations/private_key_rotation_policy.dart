import 'package:pulumi/pulumi.dart' as pulumi;

/// cert-manager private key rotationPolicy.
enum PrivateKeyRotationPolicy implements pulumi.PulumiEnum<String> {
  always("Always"),
  never_("Never");

  const PrivateKeyRotationPolicy(this.wireValue);
  @override
  final String wireValue;

  static PrivateKeyRotationPolicy fromValue(String value) {
    for (final item in PrivateKeyRotationPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateKeyRotationPolicy value: $value');
  }
}
