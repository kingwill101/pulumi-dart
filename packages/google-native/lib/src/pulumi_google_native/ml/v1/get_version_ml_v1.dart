import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_version_ml_v1_args.dart';
import 'get_version_ml_v1_result.dart';

/// Gets information about a model version. Models can have multiple versions. You can call projects.models.versions.list to get the same information that this method returns for all of the versions of a model.
Future<GetVersionMlV1Result> getVersionMlV1(
  GetVersionMlV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionMlV1Result.fromMap(result);
}
