import 'package:pulumi/pulumi.dart';
import 'get_email_identity_args2.dart';
import 'get_email_identity_result2.dart';

/// Data source for managing an AWS SESv2 (Simple Email V2) Email Identity.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetEmailIdentityResult2> getEmailIdentity2(
  GetEmailIdentityArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sesv2/getEmailIdentity:getEmailIdentity',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEmailIdentityResult2.fromMap(result);
}
