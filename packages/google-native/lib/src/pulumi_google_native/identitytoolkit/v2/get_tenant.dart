import 'package:pulumi/pulumi.dart' hide Config;
import 'get_tenant_args.dart';
import 'get_tenant_result.dart';

/// Get a tenant. Requires read permission on the Tenant resource.
Future<GetTenantResult> getTenant(
  GetTenantArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:identitytoolkit/v2:getTenant',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTenantResult.fromMap(result);
}
