import 'package:pulumi/pulumi.dart';
import 'get_environment_args5.dart';
import 'get_environment_result5.dart';

/// Retrieves the specified agent environment.
Future<GetEnvironmentResult5> getEnvironment5(
  GetEnvironmentArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult5.fromMap(result);
}
