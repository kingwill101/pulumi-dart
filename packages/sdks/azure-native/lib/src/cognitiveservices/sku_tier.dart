import 'package:pulumi/pulumi.dart' as pulumi;

/// This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.
enum SkuTier implements pulumi.PulumiEnum<String> {
  valueFree("Free"),
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueEnterprise("Enterprise");

  const SkuTier(this.wireValue);
  @override
  final String wireValue;

  static SkuTier fromValue(String value) {
    for (final item in SkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuTier value: $value');
  }
}
