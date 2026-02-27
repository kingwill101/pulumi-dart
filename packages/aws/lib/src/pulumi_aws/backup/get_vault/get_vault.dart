import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vault_args.dart';
import 'get_vault_result.dart';

/// Use this data source to get information on an existing backup vault.
Future<GetVaultResult> getVault(
  GetVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getVault:getVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVaultResult.fromMap(result);
}
