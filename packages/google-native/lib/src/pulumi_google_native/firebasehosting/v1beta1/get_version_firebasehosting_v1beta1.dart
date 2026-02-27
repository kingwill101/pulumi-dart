import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_version_firebasehosting_v1beta1_args.dart';
import 'get_version_firebasehosting_v1beta1_result.dart';

/// Get the specified version that has been created for the specified site. This can include versions that were created for the default `live` channel or for any active preview channels for the specified site.
Future<GetVersionFirebasehostingV1beta1Result> getVersionFirebasehostingV1beta1(
  GetVersionFirebasehostingV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionFirebasehostingV1beta1Result.fromMap(result);
}
