import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workforce_pool_provider_args.dart';
import 'get_workforce_pool_provider_result.dart';

/// Gets an individual WorkforcePoolProvider.
Future<GetWorkforcePoolProviderResult> getWorkforcePoolProvider(
  GetWorkforcePoolProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePoolProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkforcePoolProviderResult.fromMap(result);
}
