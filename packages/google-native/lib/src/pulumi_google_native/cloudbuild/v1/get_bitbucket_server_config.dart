import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bitbucket_server_config_args.dart';
import 'get_bitbucket_server_config_result.dart';

/// Retrieve a `BitbucketServerConfig`. This API is experimental.
Future<GetBitbucketServerConfigResult> getBitbucketServerConfig(
  GetBitbucketServerConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getBitbucketServerConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBitbucketServerConfigResult.fromMap(result);
}
