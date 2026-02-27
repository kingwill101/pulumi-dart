import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_inbound_saml_sso_profile_cloudidentity_v1beta1_args.dart';
import 'get_inbound_saml_sso_profile_cloudidentity_v1beta1_result.dart';

/// Gets an InboundSamlSsoProfile.
Future<GetInboundSamlSsoProfileCloudidentityV1beta1Result>
    getInboundSamlSsoProfileCloudidentityV1beta1(
  GetInboundSamlSsoProfileCloudidentityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getInboundSamlSsoProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInboundSamlSsoProfileCloudidentityV1beta1Result.fromMap(result);
}
