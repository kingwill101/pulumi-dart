import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_composer_v1_args.dart';
import 'get_environment_composer_v1_result.dart';

/// Get an existing environment.
Future<GetEnvironmentComposerV1Result> getEnvironmentComposerV1(
  GetEnvironmentComposerV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:composer/v1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentComposerV1Result.fromMap(result);
}
