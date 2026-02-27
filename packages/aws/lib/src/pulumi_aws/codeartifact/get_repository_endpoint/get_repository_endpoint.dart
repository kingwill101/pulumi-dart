import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_endpoint_args.dart';
import 'get_repository_endpoint_result.dart';

/// The CodeArtifact Repository Endpoint data source returns the endpoint of a repository for a specific package format.
Future<GetRepositoryEndpointResult> getRepositoryEndpoint(
  GetRepositoryEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codeartifact/getRepositoryEndpoint:getRepositoryEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryEndpointResult.fromMap(result);
}
