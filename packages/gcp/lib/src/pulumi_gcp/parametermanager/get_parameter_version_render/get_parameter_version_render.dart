import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameter_version_render_args.dart';
import 'get_parameter_version_render_result.dart';

/// Get the value and metadata from a Parameter Manager Parameter version with render payload data. For this datasource to work as expected, the principal of the parameter must be provided with the [Secret Manager Secret Accessor](https://cloud.google.com/secret-manager/docs/access-control#secretmanager.secretAccessor) role. For more information see the [official documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/overview)  and [API](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions/render).
Future<GetParameterVersionRenderResult> getParameterVersionRender(
  GetParameterVersionRenderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameterVersionRender:getParameterVersionRender',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParameterVersionRenderResult.fromMap(result);
}
