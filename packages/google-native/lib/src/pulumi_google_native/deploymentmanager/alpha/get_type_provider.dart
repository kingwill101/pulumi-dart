import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_type_provider_args.dart';
import 'get_type_provider_result.dart';

/// Gets information about a specific type provider.
Future<GetTypeProviderResult> getTypeProvider(
  GetTypeProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/alpha:getTypeProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTypeProviderResult.fromMap(result);
}
