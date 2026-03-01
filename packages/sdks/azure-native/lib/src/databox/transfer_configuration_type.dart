/// Type of the configuration for transfer.
enum TransferConfigurationType {
  valueTransferAll("TransferAll"),
  valueTransferUsingFilter("TransferUsingFilter");

  const TransferConfigurationType(this.value);
  final String value;

  static TransferConfigurationType fromValue(String value) {
    for (final item in TransferConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransferConfigurationType value: $value');
  }
}

