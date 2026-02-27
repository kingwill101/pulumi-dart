import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_build_args.dart';
import 'get_build_result.dart';

/// Returns information about a previously requested build. The `Build` that is returned includes its status (such as `SUCCESS`, `FAILURE`, or `WORKING`), and timing information.
Future<GetBuildResult> getBuild(
  GetBuildArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getBuild',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBuildResult.fromMap(result);
}
