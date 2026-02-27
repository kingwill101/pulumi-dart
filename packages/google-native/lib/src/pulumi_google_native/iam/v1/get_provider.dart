import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_provider_args.dart';
import 'get_provider_result.dart';

/// Gets an individual WorkloadIdentityPoolProvider.
Future<GetProviderResult> getProvider(
  GetProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderResult.fromMap(result);
}
