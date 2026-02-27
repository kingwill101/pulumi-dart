import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';

/// Get the service account from a project. For more information see
/// the official [API](https://cloud.google.com/compute/docs/access/service-accounts) documentation.
///
/// ## Example Usage
///
///
///
///
/// ### Save Key In Kubernetes Secret
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}
