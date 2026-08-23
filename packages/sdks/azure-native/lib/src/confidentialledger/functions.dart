import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ledger_args.dart';
import 'get_ledger_result.dart';
import 'get_managed_ccfargs.dart';
import 'get_managed_ccfresult.dart';

/// Retrieves the properties of a Confidential Ledger.
///
/// Uses Azure REST API version 2023-06-28-preview.
///
/// Other available API versions: 2022-05-13, 2022-09-08-preview, 2023-01-26-preview, 2024-07-09-preview, 2024-09-19-preview, 2025-06-10-preview, 2026-02-23, 2026-05-22-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confidentialledger [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confidentialledger_get_ledger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLedgerResult> getLedger(
  GetLedgerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confidentialledger:getLedger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLedgerResult.fromMap(result);
}

/// Retrieves the properties of a Managed CCF app.
///
/// Uses Azure REST API version 2023-06-28-preview.
///
/// Other available API versions: 2022-09-08-preview, 2023-01-26-preview, 2024-07-09-preview, 2024-09-19-preview, 2025-06-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confidentialledger [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confidentialledger_get_managed_ccfargs_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedCCFResult> getManagedCCF(
  GetManagedCCFArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confidentialledger:getManagedCCF',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedCCFResult.fromMap(result);
}
