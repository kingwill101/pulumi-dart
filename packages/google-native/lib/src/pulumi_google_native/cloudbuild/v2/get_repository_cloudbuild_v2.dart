import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_cloudbuild_v2_args.dart';
import 'get_repository_cloudbuild_v2_result.dart';

/// Gets details of a single repository.
Future<GetRepositoryCloudbuildV2Result> getRepositoryCloudbuildV2(
  GetRepositoryCloudbuildV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v2:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryCloudbuildV2Result.fromMap(result);
}
