import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_release_firebasehosting_v1beta1_args.dart';
import 'get_release_firebasehosting_v1beta1_result.dart';

/// Gets the specified release for a site or channel. When used to get a release for a site, this can get releases for both the default `live` channel and any active preview channels for the specified site.
Future<GetReleaseFirebasehostingV1beta1Result> getReleaseFirebasehostingV1beta1(
  GetReleaseFirebasehostingV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getRelease',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReleaseFirebasehostingV1beta1Result.fromMap(result);
}
