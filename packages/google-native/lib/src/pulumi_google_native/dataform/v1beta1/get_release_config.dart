import 'package:pulumi/pulumi.dart' hide Config;
import 'get_release_config_args.dart';
import 'get_release_config_result.dart';

/// Fetches a single ReleaseConfig.
Future<GetReleaseConfigResult> getReleaseConfig(
  GetReleaseConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getReleaseConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReleaseConfigResult.fromMap(result);
}
