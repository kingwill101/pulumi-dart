import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_parameter_version_args.dart';
import 'get_regional_parameter_version_result.dart';

/// Get the value and metadata from a Parameter Manager Regional Parameter version. For more information see the [official documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/overview) and [API](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions).
Future<GetRegionalParameterVersionResult> getRegionalParameterVersion(
  GetRegionalParameterVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getRegionalParameterVersion:getRegionalParameterVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalParameterVersionResult.fromMap(result);
}
