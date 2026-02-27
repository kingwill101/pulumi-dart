import 'package:pulumi/pulumi.dart' hide Config;
import 'get_workforce_pool_provider_args.dart';
import 'get_workforce_pool_provider_result.dart';

/// Gets an individual WorkforcePoolProvider.
Future<GetWorkforcePoolProviderResult> getWorkforcePoolProvider(
  GetWorkforcePoolProviderArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePoolProvider',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkforcePoolProviderResult.fromMap(result);
}
