import 'package:pulumi/pulumi.dart';
import 'get_credentials_args.dart';
import 'get_credentials_result.dart';

/// Provides redshift serverless temporary credentials for a workgroup.
Future<GetCredentialsResult> getCredentials(
  GetCredentialsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshiftserverless/getCredentials:getCredentials',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCredentialsResult.fromMap(result);
}
