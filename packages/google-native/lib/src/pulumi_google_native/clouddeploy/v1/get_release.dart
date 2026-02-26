import 'package:pulumi/pulumi.dart';
import 'get_release_args.dart';
import 'get_release_result.dart';

/// Gets details of a single Release.
Future<GetReleaseResult> getRelease(
  GetReleaseArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getRelease',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReleaseResult.fromMap(result);
}
