/// Type of the configuration for transfer.
enum TransferConfigurationType {
  valueTransferAll("TransferAll"),
  valueTransferUsingFilter("TransferUsingFilter");

  const TransferConfigurationType(this.wireValue);
  final String wireValue;

  static TransferConfigurationType fromValue(String value) {
    for (final item in TransferConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransferConfigurationType value: $value');
  }
}
