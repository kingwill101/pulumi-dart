import 'package:pulumi/pulumi.dart' as pulumi;

/// LedgerRole associated with the Security Principal of Ledger
enum LedgerRoleName implements pulumi.PulumiEnum<String> {
  valueReader("Reader"),
  valueContributor("Contributor"),
  valueAdministrator("Administrator");

  const LedgerRoleName(this.wireValue);
  @override
  final String wireValue;

  static LedgerRoleName fromValue(String value) {
    for (final item in LedgerRoleName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LedgerRoleName value: $value');
  }
}
