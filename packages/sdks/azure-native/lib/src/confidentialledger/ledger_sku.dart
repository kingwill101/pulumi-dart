import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU associated with the ledger
enum LedgerSku implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valueBasic("Basic"),
  valueUnknown("Unknown");

  const LedgerSku(this.wireValue);
  @override
  final String wireValue;

  static LedgerSku fromValue(String value) {
    for (final item in LedgerSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LedgerSku value: $value');
  }
}
