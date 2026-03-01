/// This field is required to be implemented by the Resource Provider if the service has more than one tier.
enum PostgresInstanceSkuTier {
  valueHyperscale("Hyperscale");

  const PostgresInstanceSkuTier(this.value);
  final String value;

  static PostgresInstanceSkuTier fromValue(String value) {
    for (final item in PostgresInstanceSkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PostgresInstanceSkuTier value: $value');
  }
}

