import 'package:pulumi/pulumi.dart';
import 'get_regional_secret_args.dart';
import 'get_regional_secret_result.dart';

/// Use this data source to get information about a Secret Manager Regional Secret
Future<GetRegionalSecretResult> getRegionalSecret(
  GetRegionalSecretArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecret:getRegionalSecret',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretResult.fromMap(result);
}
