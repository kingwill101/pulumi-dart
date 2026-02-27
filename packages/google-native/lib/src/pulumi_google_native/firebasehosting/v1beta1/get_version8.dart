import 'package:pulumi/pulumi.dart' hide Config;
import 'get_version_args8.dart';
import 'get_version_result8.dart';

/// Get the specified version that has been created for the specified site. This can include versions that were created for the default `live` channel or for any active preview channels for the specified site.
Future<GetVersionResult8> getVersion8(
  GetVersionArgs8 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVersionResult8.fromMap(result);
}
