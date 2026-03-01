/// The pricing tier for the instance.
enum SqlManagedInstanceSkuTier {
  valueGeneralPurpose("GeneralPurpose"),
  valueBusinessCritical("BusinessCritical");

  const SqlManagedInstanceSkuTier(this.value);
  final String value;

  static SqlManagedInstanceSkuTier fromValue(String value) {
    for (final item in SqlManagedInstanceSkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlManagedInstanceSkuTier value: $value');
  }
}

