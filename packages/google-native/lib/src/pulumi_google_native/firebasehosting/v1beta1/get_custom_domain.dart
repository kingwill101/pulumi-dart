import 'package:pulumi/pulumi.dart';
import 'get_custom_domain_args.dart';
import 'get_custom_domain_result.dart';

/// Gets the specified `CustomDomain`.
Future<GetCustomDomainResult> getCustomDomain(
  GetCustomDomainArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getCustomDomain',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomDomainResult.fromMap(result);
}
