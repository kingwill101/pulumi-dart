import 'package:pulumi/pulumi.dart' hide Config;
import 'get_environment_args3.dart';
import 'get_environment_result3.dart';

/// Get an existing environment.
Future<GetEnvironmentResult3> getEnvironment3(
  GetEnvironmentArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:composer/v1beta1:getEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult3.fromMap(result);
}
