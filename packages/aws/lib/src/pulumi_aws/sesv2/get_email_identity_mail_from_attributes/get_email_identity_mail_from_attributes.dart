import 'package:pulumi/pulumi.dart';
import 'get_email_identity_mail_from_attributes_args.dart';
import 'get_email_identity_mail_from_attributes_result.dart';

/// Data source for managing an AWS SESv2 (Simple Email V2) Email Identity Mail From Attributes.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetEmailIdentityMailFromAttributesResult>
    getEmailIdentityMailFromAttributes(
  GetEmailIdentityMailFromAttributesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sesv2/getEmailIdentityMailFromAttributes:getEmailIdentityMailFromAttributes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEmailIdentityMailFromAttributesResult.fromMap(result);
}
