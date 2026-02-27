import 'package:pulumi/pulumi.dart' hide Config;
import 'get_registry_args.dart';
import 'get_registry_result.dart';

/// Gets a device registry configuration.
Future<GetRegistryResult> getRegistry(
  GetRegistryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getRegistry',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegistryResult.fromMap(result);
}
