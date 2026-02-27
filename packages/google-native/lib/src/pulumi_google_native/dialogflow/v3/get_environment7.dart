import 'package:pulumi/pulumi.dart' hide Config;
import 'get_environment_args7.dart';
import 'get_environment_result7.dart';

/// Retrieves the specified Environment.
Future<GetEnvironmentResult7> getEnvironment7(
  GetEnvironmentArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult7.fromMap(result);
}
