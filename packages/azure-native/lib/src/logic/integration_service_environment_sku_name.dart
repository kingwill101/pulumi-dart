/// The sku name.
enum IntegrationServiceEnvironmentSkuName {
  valueNotSpecified("NotSpecified"),
  valuePremium("Premium"),
  valueDeveloper("Developer");

  const IntegrationServiceEnvironmentSkuName(this.value);
  final String value;

  static IntegrationServiceEnvironmentSkuName fromValue(String value) {
    for (final item in IntegrationServiceEnvironmentSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationServiceEnvironmentSkuName value: $value');
  }
}

