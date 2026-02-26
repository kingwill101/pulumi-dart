import 'package:pulumi/pulumi.dart';
import 'get_environment_args.dart';
import 'get_environment_result.dart';

/// Gets environment details.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}
