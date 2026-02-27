import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_alias_result.dart';

/// The IAM Account Alias data source allows access to the account alias
/// for the effective account in which this provider is working.
Future<GetAccountAliasResult> getAccountAlias({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getAccountAlias:getAccountAlias',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountAliasResult.fromMap(result);
}
