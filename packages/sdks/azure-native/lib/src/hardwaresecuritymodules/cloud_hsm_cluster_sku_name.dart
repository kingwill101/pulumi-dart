/// Sku name of the Cloud HSM Cluster
enum CloudHsmClusterSkuName {
  valueStandardB1("Standard_B1"),
  valueStandardB10("Standard B10");

  const CloudHsmClusterSkuName(this.wireValue);
  final String wireValue;

  static CloudHsmClusterSkuName fromValue(String value) {
    for (final item in CloudHsmClusterSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudHsmClusterSkuName value: $value');
  }
}

