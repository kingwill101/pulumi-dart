import 'package:pulumi/pulumi.dart' hide Config;
import 'get_release_args2.dart';
import 'get_release_result2.dart';

/// Gets the specified release for a site or channel. When used to get a release for a site, this can get releases for both the default `live` channel and any active preview channels for the specified site.
Future<GetReleaseResult2> getRelease2(
  GetReleaseArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getRelease',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReleaseResult2.fromMap(result);
}
