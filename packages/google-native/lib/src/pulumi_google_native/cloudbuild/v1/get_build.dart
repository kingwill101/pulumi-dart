import 'package:pulumi/pulumi.dart';
import 'get_build_args.dart';
import 'get_build_result.dart';

/// Returns information about a previously requested build. The `Build` that is returned includes its status (such as `SUCCESS`, `FAILURE`, or `WORKING`), and timing information.
Future<GetBuildResult> getBuild(
  GetBuildArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getBuild',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBuildResult.fromMap(result);
}
