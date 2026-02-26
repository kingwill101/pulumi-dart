import 'package:pulumi/pulumi.dart';
import 'get_inbound_saml_sso_profile_args.dart';
import 'get_inbound_saml_sso_profile_result.dart';

/// Gets an InboundSamlSsoProfile.
Future<GetInboundSamlSsoProfileResult> getInboundSamlSsoProfile(
  GetInboundSamlSsoProfileArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getInboundSamlSsoProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInboundSamlSsoProfileResult.fromMap(result);
}
