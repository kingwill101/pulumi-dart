import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the configuration for transfer.
enum TransferConfigurationType implements pulumi.PulumiEnum<String> {
  valueTransferAll("TransferAll"),
  valueTransferUsingFilter("TransferUsingFilter");

  const TransferConfigurationType(this.wireValue);
  @override
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
