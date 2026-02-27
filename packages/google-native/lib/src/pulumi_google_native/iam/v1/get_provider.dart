import 'package:pulumi/pulumi.dart' hide Config;
import 'get_provider_args.dart';
import 'get_provider_result.dart';

/// Gets an individual WorkloadIdentityPoolProvider.
Future<GetProviderResult> getProvider(
  GetProviderArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getProvider',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProviderResult.fromMap(result);
}
