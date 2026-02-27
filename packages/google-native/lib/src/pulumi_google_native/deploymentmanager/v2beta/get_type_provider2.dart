import 'package:pulumi/pulumi.dart' hide Config;
import 'get_type_provider_args2.dart';
import 'get_type_provider_result2.dart';

/// Gets information about a specific type provider.
Future<GetTypeProviderResult2> getTypeProvider2(
  GetTypeProviderArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2beta:getTypeProvider',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTypeProviderResult2.fromMap(result);
}
