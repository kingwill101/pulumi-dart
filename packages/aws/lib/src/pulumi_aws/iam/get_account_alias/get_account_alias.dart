import 'package:pulumi/pulumi.dart';
import 'get_account_alias_result.dart';

/// The IAM Account Alias data source allows access to the account alias
/// for the effective account in which this provider is working.
Future<GetAccountAliasResult> getAccountAlias({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getAccountAlias:getAccountAlias',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountAliasResult.fromMap(result);
}
