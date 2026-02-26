import 'package:pulumi/pulumi.dart';
import 'get_service_account_args.dart';
import 'get_service_account_result.dart';

/// Gets a ServiceAccount.
Future<GetServiceAccountResult> getServiceAccount(
  GetServiceAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getServiceAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceAccountResult.fromMap(result);
}
