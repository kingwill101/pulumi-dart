import 'package:pulumi/pulumi.dart' as pulumi;

/// The sku name.
enum IntegrationServiceEnvironmentSkuName implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valuePremium("Premium"),
  valueDeveloper("Developer");

  const IntegrationServiceEnvironmentSkuName(this.wireValue);
  @override
  final String wireValue;

  static IntegrationServiceEnvironmentSkuName fromValue(String value) {
    for (final item in IntegrationServiceEnvironmentSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationServiceEnvironmentSkuName value: $value');
  }
}
