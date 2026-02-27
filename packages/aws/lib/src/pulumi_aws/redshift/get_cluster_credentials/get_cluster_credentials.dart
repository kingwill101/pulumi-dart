import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_credentials_args.dart';
import 'get_cluster_credentials_result.dart';

/// Provides redshift cluster temporary credentials.
Future<GetClusterCredentialsResult> getClusterCredentials(
  GetClusterCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getClusterCredentials:getClusterCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterCredentialsResult.fromMap(result);
}
