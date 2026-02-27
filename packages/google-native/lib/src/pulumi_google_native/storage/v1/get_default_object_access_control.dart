import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_default_object_access_control_args.dart';
import 'get_default_object_access_control_result.dart';

/// Returns the default object ACL entry for the specified entity on the specified bucket.
Future<GetDefaultObjectAccessControlResult> getDefaultObjectAccessControl(
  GetDefaultObjectAccessControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getDefaultObjectAccessControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultObjectAccessControlResult.fromMap(result);
}
