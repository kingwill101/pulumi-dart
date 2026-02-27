import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gcp_user_access_binding_args.dart';
import 'get_gcp_user_access_binding_result.dart';

/// Gets the GcpUserAccessBinding with the given name.
Future<GetGcpUserAccessBindingResult> getGcpUserAccessBinding(
  GetGcpUserAccessBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1:getGcpUserAccessBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGcpUserAccessBindingResult.fromMap(result);
}
