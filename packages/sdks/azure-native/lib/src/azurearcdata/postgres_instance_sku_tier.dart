/// This field is required to be implemented by the Resource Provider if the service has more than one tier.
enum PostgresInstanceSkuTier {
  valueHyperscale("Hyperscale");

  const PostgresInstanceSkuTier(this.wireValue);
  final String wireValue;

  static PostgresInstanceSkuTier fromValue(String value) {
    for (final item in PostgresInstanceSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PostgresInstanceSkuTier value: $value');
  }
}

