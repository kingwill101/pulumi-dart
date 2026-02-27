import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_release_config_args.dart';
import 'get_release_config_result.dart';

/// Fetches a single ReleaseConfig.
Future<GetReleaseConfigResult> getReleaseConfig(
  GetReleaseConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getReleaseConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReleaseConfigResult.fromMap(result);
}
