/// The write behavior for the operation. Default is 'Insert'.
enum SapCloudForCustomerSinkWriteBehavior {
  valueInsert("Insert"),
  valueUpdate("Update");

  const SapCloudForCustomerSinkWriteBehavior(this.value);
  final String value;

  static SapCloudForCustomerSinkWriteBehavior fromValue(String value) {
    for (final item in SapCloudForCustomerSinkWriteBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SapCloudForCustomerSinkWriteBehavior value: $value');
  }
}

