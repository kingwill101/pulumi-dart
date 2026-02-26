import 'package:pulumi/pulumi.dart';
import 'get_environment_args8.dart';
import 'get_environment_result8.dart';

/// Retrieves the specified Environment.
Future<GetEnvironmentResult8> getEnvironment8(
  GetEnvironmentArgs8 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult8.fromMap(result);
}
