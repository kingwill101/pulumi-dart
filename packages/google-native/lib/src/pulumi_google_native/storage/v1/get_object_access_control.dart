import 'package:pulumi/pulumi.dart' hide Config;
import 'get_object_access_control_args.dart';
import 'get_object_access_control_result.dart';

/// Returns the ACL entry for the specified entity on the specified object.
Future<GetObjectAccessControlResult> getObjectAccessControl(
  GetObjectAccessControlArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getObjectAccessControl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetObjectAccessControlResult.fromMap(result);
}
