import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_default_supported_idp_config_args.dart';
import 'get_default_supported_idp_config_result.dart';

/// Retrieve a default supported Idp configuration for an Identity Toolkit project.
Future<GetDefaultSupportedIdpConfigResult> getDefaultSupportedIdpConfig(
  GetDefaultSupportedIdpConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:identitytoolkit/v2:getDefaultSupportedIdpConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultSupportedIdpConfigResult.fromMap(result);
}
