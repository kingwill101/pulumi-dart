import 'package:pulumi/pulumi.dart' hide Config;
import 'get_bitbucket_server_config_args.dart';
import 'get_bitbucket_server_config_result.dart';

/// Retrieve a `BitbucketServerConfig`. This API is experimental.
Future<GetBitbucketServerConfigResult> getBitbucketServerConfig(
  GetBitbucketServerConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getBitbucketServerConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBitbucketServerConfigResult.fromMap(result);
}
