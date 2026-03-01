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
    required pulumi.Output<String> ledgerName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      ledgerName = pulumi.Input.asInput<String>(ledgerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ledgerName': ledgerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLedgerArgs.fromMap(Map<String, dynamic> map) {
    return GetLedgerArgs(
      ledgerName: pulumi.Output.create<String>(map['ledgerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

