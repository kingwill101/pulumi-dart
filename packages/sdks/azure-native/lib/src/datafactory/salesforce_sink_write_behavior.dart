/// The write behavior for the operation. Default is Insert.
enum SalesforceSinkWriteBehavior {
  valueInsert("Insert"),
  valueUpsert("Upsert");

  const SalesforceSinkWriteBehavior(this.value);
  final String value;

  static SalesforceSinkWriteBehavior fromValue(String value) {
    for (final item in SalesforceSinkWriteBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SalesforceSinkWriteBehavior value: $value');
  }
}

