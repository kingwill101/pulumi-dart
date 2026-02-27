import 'package:pulumi/pulumi.dart';
import 'get_ledger_args.dart';
import 'get_ledger_result.dart';

/// Use this data source to fetch information about a Quantum Ledger Database.
Future<GetLedgerResult> getLedger(
  GetLedgerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:qldb/getLedger:getLedger',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLedgerResult.fromMap(result);
}
