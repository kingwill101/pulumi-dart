import 'package:pulumi/pulumi.dart';
import 'get_environment_args4.dart';
import 'get_environment_result4.dart';

/// Get environment resource.
Future<GetEnvironmentResult4> getEnvironment4(
  GetEnvironmentArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult4.fromMap(result);
}
