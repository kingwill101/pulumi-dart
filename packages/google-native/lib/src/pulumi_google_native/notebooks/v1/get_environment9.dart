import 'package:pulumi/pulumi.dart';
import 'get_environment_args9.dart';
import 'get_environment_result9.dart';

/// Gets details of a single Environment.
Future<GetEnvironmentResult9> getEnvironment9(
  GetEnvironmentArgs9 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult9.fromMap(result);
}
