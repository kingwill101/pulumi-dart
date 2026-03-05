/// The sku name.
enum IntegrationServiceEnvironmentSkuName {
  valueNotSpecified("NotSpecified"),
  valuePremium("Premium"),
  valueDeveloper("Developer");

  const IntegrationServiceEnvironmentSkuName(this.wireValue);
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

