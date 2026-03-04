// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InvoiceUnitRule {
  /// Set of AWS account IDs included in this invoice unit.
  final pulumi.Input<List<String>> linkedAccounts;

  /// Creates a new [InvoiceUnitRule].
  /// [linkedAccounts] Set of AWS account IDs included in this invoice unit.
  InvoiceUnitRule({required this.linkedAccounts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'linkedAccounts': linkedAccounts};
  }

  factory InvoiceUnitRule.fromMap(Map<String, dynamic> map) {
    return InvoiceUnitRule(
      linkedAccounts: pulumi.Input.fromValue(
        (map['linkedAccounts'] as List).cast<String>(),
      ),
    );
  }
}
