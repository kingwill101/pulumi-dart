import 'package:pulumi/pulumi.dart';
import 'get_domain_identity_args.dart';
import 'get_domain_identity_result.dart';

/// Retrieve the SES domain identity
Future<GetDomainIdentityResult> getDomainIdentity(
  GetDomainIdentityArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ses/getDomainIdentity:getDomainIdentity',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainIdentityResult.fromMap(result);
}
