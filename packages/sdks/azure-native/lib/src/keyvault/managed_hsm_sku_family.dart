import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU Family of the managed HSM Pool
enum ManagedHsmSkuFamily implements pulumi.PulumiEnum<String> {
  valueB("B"),
  valueC("C");

  const ManagedHsmSkuFamily(this.wireValue);
  @override
  final String wireValue;

  static ManagedHsmSkuFamily fromValue(String value) {
    for (final item in ManagedHsmSkuFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedHsmSkuFamily value: $value');
  }
}
