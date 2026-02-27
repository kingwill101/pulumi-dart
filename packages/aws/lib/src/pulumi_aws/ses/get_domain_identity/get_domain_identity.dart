import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_identity_args.dart';
import 'get_domain_identity_result.dart';

/// Retrieve the SES domain identity
Future<GetDomainIdentityResult> getDomainIdentity(
  GetDomainIdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ses/getDomainIdentity:getDomainIdentity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainIdentityResult.fromMap(result);
}
