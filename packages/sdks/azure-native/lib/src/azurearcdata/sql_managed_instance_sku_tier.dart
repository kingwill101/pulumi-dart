import 'package:pulumi/pulumi.dart' as pulumi;

/// The pricing tier for the instance.
enum SqlManagedInstanceSkuTier implements pulumi.PulumiEnum<String> {
  valueGeneralPurpose("GeneralPurpose"),
  valueBusinessCritical("BusinessCritical");

  const SqlManagedInstanceSkuTier(this.wireValue);
  @override
  final String wireValue;

  static SqlManagedInstanceSkuTier fromValue(String value) {
    for (final item in SqlManagedInstanceSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlManagedInstanceSkuTier value: $value');
  }
}
