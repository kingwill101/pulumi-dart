import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_identity_sesv2_args.dart';
import 'get_email_identity_sesv2_result.dart';

/// Data source for managing an AWS SESv2 (Simple Email V2) Email Identity.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetEmailIdentitySesv2Result> getEmailIdentitySesv2(
  GetEmailIdentitySesv2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sesv2/getEmailIdentity:getEmailIdentity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEmailIdentitySesv2Result.fromMap(result);
}
