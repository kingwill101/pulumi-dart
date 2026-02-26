import 'package:pulumi/pulumi.dart';
import 'get_environment_args2.dart';
import 'get_environment_result2.dart';

/// Get an existing environment.
Future<GetEnvironmentResult2> getEnvironment2(
  GetEnvironmentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:composer/v1:getEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult2.fromMap(result);
}
