import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_identity_args.dart';
import 'get_email_identity_result.dart';

/// Retrieve the active SES email identity
Future<GetEmailIdentityResult> getEmailIdentity(
  GetEmailIdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ses/getEmailIdentity:getEmailIdentity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEmailIdentityResult.fromMap(result);
}
