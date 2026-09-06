import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of Confidential Ledger
enum LedgerType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valuePublic("Public"),
  valuePrivate("Private");

  const LedgerType(this.wireValue);
  @override
  final String wireValue;

  static LedgerType fromValue(String value) {
    for (final item in LedgerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LedgerType value: $value');
  }
}
