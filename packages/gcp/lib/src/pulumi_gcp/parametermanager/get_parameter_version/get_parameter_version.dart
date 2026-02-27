import 'package:pulumi/pulumi.dart';
import 'get_parameter_version_args.dart';
import 'get_parameter_version_result.dart';

/// Get the value and metadata from a Parameter Manager Parameter version. For more information see the [official documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/overview)  and [API](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions).
Future<GetParameterVersionResult> getParameterVersion(
  GetParameterVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameterVersion:getParameterVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetParameterVersionResult.fromMap(result);
}
