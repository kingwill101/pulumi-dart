import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_profile_networksecurity_v1beta1_args.dart';
import 'get_security_profile_networksecurity_v1beta1_result.dart';

/// Gets details of a single SecurityProfile.
Future<GetSecurityProfileNetworksecurityV1beta1Result>
    getSecurityProfileNetworksecurityV1beta1(
  GetSecurityProfileNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getSecurityProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityProfileNetworksecurityV1beta1Result.fromMap(result);
}
