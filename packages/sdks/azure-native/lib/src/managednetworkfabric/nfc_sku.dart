import 'package:pulumi/pulumi.dart' as pulumi;

/// Network Fabric Controller SKU.
enum NfcSku implements pulumi.PulumiEnum<String> {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valueHighPerformance("HighPerformance");

  const NfcSku(this.wireValue);
  @override
  final String wireValue;

  static NfcSku fromValue(String value) {
    for (final item in NfcSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfcSku value: $value');
  }
}
