import 'package:pulumi/pulumi.dart';
import 'get_environment_args6.dart';
import 'get_environment_result6.dart';

/// Retrieves the specified agent environment.
Future<GetEnvironmentResult6> getEnvironment6(
  GetEnvironmentArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult6.fromMap(result);
}
