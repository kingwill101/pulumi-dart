import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_version_integrations_v1alpha_args.dart';
import 'get_version_integrations_v1alpha_result.dart';

/// Get a integration in the specified project.
Future<GetVersionIntegrationsV1alphaResult> getVersionIntegrationsV1alpha(
  GetVersionIntegrationsV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionIntegrationsV1alphaResult.fromMap(result);
}
