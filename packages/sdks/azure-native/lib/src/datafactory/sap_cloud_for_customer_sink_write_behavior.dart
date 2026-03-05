/// The write behavior for the operation. Default is 'Insert'.
enum SapCloudForCustomerSinkWriteBehavior {
  valueInsert("Insert"),
  valueUpdate("Update");

  const SapCloudForCustomerSinkWriteBehavior(this.wireValue);
  final String wireValue;

  static SapCloudForCustomerSinkWriteBehavior fromValue(String value) {
    for (final item in SapCloudForCustomerSinkWriteBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SapCloudForCustomerSinkWriteBehavior value: $value');
  }
}

