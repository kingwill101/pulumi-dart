/// Gets or sets the azure SQL compute tier.
enum ComputeTier {
  unknown("Unknown"),
  automatic("Automatic"),
  provisioned("Provisioned"),
  serverless("Serverless");

  const ComputeTier(this.value);
  final String value;

  static ComputeTier fromValue(String value) {
    for (final item in ComputeTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeTier value: $value');
  }
}

