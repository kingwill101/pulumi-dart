import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_credentials_args.dart';
import 'get_credentials_result.dart';

/// Provides redshift serverless temporary credentials for a workgroup.
Future<GetCredentialsResult> getCredentials(
  GetCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshiftserverless/getCredentials:getCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCredentialsResult.fromMap(result);
}
