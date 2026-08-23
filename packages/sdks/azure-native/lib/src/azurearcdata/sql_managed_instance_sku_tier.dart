/// The pricing tier for the instance.
enum SqlManagedInstanceSkuTier {
  valueGeneralPurpose("GeneralPurpose"),
  valueBusinessCritical("BusinessCritical");

  const SqlManagedInstanceSkuTier(this.wireValue);
  final String wireValue;

  static SqlManagedInstanceSkuTier fromValue(String value) {
    for (final item in SqlManagedInstanceSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlManagedInstanceSkuTier value: $value');
  }
}
