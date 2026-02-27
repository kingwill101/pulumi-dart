import 'package:pulumi/pulumi.dart';
import 'get_default_service_account_args3.dart';
import 'get_default_service_account_result3.dart';

/// Use this data source to retrieve default service account for this project
Future<GetDefaultServiceAccountResult3> getDefaultServiceAccount3(
  GetDefaultServiceAccountArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getDefaultServiceAccount:getDefaultServiceAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDefaultServiceAccountResult3.fromMap(result);
}
