// ignore_for_file: unused_element, unnecessary_cast

class InvoiceUnitRule {
  /// Set of AWS account IDs included in this invoice unit.
  final List<String> linkedAccounts;

  InvoiceUnitRule({
    required this.linkedAccounts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['linkedAccounts'] = linkedAccounts;
    return map;
  }

  factory InvoiceUnitRule.fromMap(Map<String, dynamic> map) {
    return InvoiceUnitRule(
      linkedAccounts: (map['linkedAccounts'] as List).cast<String>(),
    );
  }
}
