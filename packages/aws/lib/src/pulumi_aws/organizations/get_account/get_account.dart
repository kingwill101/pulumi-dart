import 'package:pulumi/pulumi.dart';
import 'get_account_args.dart';
import 'get_account_result.dart';

/// Get information about an account in an organization.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getAccount:getAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}
