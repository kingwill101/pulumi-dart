enum CloudProvider {
  valueAws("aws"),
  valueAzureNative("azure-native"),
  valueGcp("gcp"),
  valueKubernetes("kubernetes"),
  valueOci("oci");

  const CloudProvider(this.value);
  final String value;

  static CloudProvider fromValue(String value) {
    for (final item in CloudProvider.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudProvider value: $value');
  }
}

