import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aws_versions_args.dart';
import 'get_aws_versions_result.dart';

/// Provides access to available Kubernetes versions in a location for a given project.
Future<GetAwsVersionsResult> getAwsVersions(
  GetAwsVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getAwsVersions:getAwsVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAwsVersionsResult.fromMap(result);
}
