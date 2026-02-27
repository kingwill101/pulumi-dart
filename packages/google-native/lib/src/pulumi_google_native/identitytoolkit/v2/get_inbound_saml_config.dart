import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_inbound_saml_config_args.dart';
import 'get_inbound_saml_config_result.dart';

/// Retrieve an inbound SAML configuration for an Identity Toolkit project.
Future<GetInboundSamlConfigResult> getInboundSamlConfig(
  GetInboundSamlConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:identitytoolkit/v2:getInboundSamlConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInboundSamlConfigResult.fromMap(result);
}
