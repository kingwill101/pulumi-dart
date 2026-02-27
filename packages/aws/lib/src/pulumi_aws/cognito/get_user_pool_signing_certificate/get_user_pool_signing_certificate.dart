import 'package:pulumi/pulumi.dart';
import 'get_user_pool_signing_certificate_args.dart';
import 'get_user_pool_signing_certificate_result.dart';

/// Use this data source to get the signing certificate for a Cognito IdP user pool.
Future<GetUserPoolSigningCertificateResult> getUserPoolSigningCertificate(
  GetUserPoolSigningCertificateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPoolSigningCertificate:getUserPoolSigningCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserPoolSigningCertificateResult.fromMap(result);
}
