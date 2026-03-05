/// The name of the SKU.
enum IotHubSku {
  valueF1("F1"),
  valueS1("S1"),
  valueS2("S2"),
  valueS3("S3"),
  valueB1("B1"),
  valueB2("B2"),
  valueB3("B3");

  const IotHubSku(this.wireValue);
  final String wireValue;

  static IotHubSku fromValue(String value) {
    for (final item in IotHubSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IotHubSku value: $value');
  }
}

