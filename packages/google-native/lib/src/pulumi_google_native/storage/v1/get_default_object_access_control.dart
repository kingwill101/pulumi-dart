import 'package:pulumi/pulumi.dart';
import 'get_default_object_access_control_args.dart';
import 'get_default_object_access_control_result.dart';

/// Returns the default object ACL entry for the specified entity on the specified bucket.
Future<GetDefaultObjectAccessControlResult> getDefaultObjectAccessControl(
  GetDefaultObjectAccessControlArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getDefaultObjectAccessControl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDefaultObjectAccessControlResult.fromMap(result);
}
