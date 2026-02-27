import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_parameter_version_render_args.dart';
import 'get_regional_parameter_version_render_result.dart';

/// Get the value and metadata from a Parameter Manager Regional Parameter version with rendered payload data. For this datasource to work as expected, the principal of the parameter must be provided with the [Secret Manager Secret Accessor](https://cloud.google.com/secret-manager/docs/access-control#secretmanager.secretAccessor) role. For more information see the [official documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/overview)  and [API](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions/render).
///
/// > **Warning:** To use this data source, we must grant the `Secret Manager Secret Accessor` role to the principal of the parameter. Please note that it can take up to 7 minutes for the role to take effect. Hence, we might need to wait approximately 7 minutes after granting  `Secret Manager Secret Accessor` role to the principal of the parameter. For more information see the [access change propagation documentation](https://cloud.google.com/iam/docs/access-change-propagation).
Future<GetRegionalParameterVersionRenderResult>
    getRegionalParameterVersionRender(
  GetRegionalParameterVersionRenderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getRegionalParameterVersionRender:getRegionalParameterVersionRender',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalParameterVersionRenderResult.fromMap(result);
}
