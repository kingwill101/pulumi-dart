import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_composer_v1beta1_args.dart';
import 'get_environment_composer_v1beta1_result.dart';

/// Get an existing environment.
Future<GetEnvironmentComposerV1beta1Result> getEnvironmentComposerV1beta1(
  GetEnvironmentComposerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:composer/v1beta1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentComposerV1beta1Result.fromMap(result);
}
