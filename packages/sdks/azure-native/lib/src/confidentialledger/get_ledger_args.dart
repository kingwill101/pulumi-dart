// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_confidentialledger_get_ledger_args_doc}
/// Arguments for getLedger.
/// {@endtemplate}
/// {@macro pulumi_confidentialledger_get_ledger_args_doc}
class GetLedgerArgs {
  /// Name of the Confidential Ledger
  final pulumi.Input<String> ledgerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLedgerArgs].
  /// [ledgerName] Name of the Confidential Ledger
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLedgerArgs({
    required this.ledgerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ledgerName': ledgerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLedgerArgs.fromMap(Map<String, dynamic> map) {
    return GetLedgerArgs(
      ledgerName: (map['ledgerName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

