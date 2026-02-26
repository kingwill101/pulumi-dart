import 'package:pulumi/pulumi.dart';
import 'get_inbound_saml_sso_profile_args2.dart';
import 'get_inbound_saml_sso_profile_result2.dart';

/// Gets an InboundSamlSsoProfile.
Future<GetInboundSamlSsoProfileResult2> getInboundSamlSsoProfile2(
  GetInboundSamlSsoProfileArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getInboundSamlSsoProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInboundSamlSsoProfileResult2.fromMap(result);
}
