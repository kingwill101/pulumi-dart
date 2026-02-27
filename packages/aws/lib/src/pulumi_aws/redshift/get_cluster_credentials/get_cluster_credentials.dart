import 'package:pulumi/pulumi.dart';
import 'get_cluster_credentials_args.dart';
import 'get_cluster_credentials_result.dart';

/// Provides redshift cluster temporary credentials.
Future<GetClusterCredentialsResult> getClusterCredentials(
  GetClusterCredentialsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getClusterCredentials:getClusterCredentials',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterCredentialsResult.fromMap(result);
}
