import 'package:pulumi/pulumi.dart' hide Config;
import 'get_release_args3.dart';
import 'get_release_result3.dart';

/// Get a `Release` by name.
Future<GetReleaseResult3> getRelease3(
  GetReleaseArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaserules/v1:getRelease',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReleaseResult3.fromMap(result);
}
