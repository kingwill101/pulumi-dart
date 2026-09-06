import 'package:pulumi/pulumi.dart' as pulumi;

/// This field is required to be implemented by the Resource Provider if the service has more than one tier.
enum PostgresInstanceSkuTier implements pulumi.PulumiEnum<String> {
  valueHyperscale("Hyperscale");

  const PostgresInstanceSkuTier(this.wireValue);
  @override
  final String wireValue;

  static PostgresInstanceSkuTier fromValue(String value) {
    for (final item in PostgresInstanceSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PostgresInstanceSkuTier value: $value');
  }
}
