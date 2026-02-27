import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tenant_args.dart';
import 'get_tenant_result.dart';

/// Get a tenant. Requires read permission on the Tenant resource.
Future<GetTenantResult> getTenant(
  GetTenantArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:identitytoolkit/v2:getTenant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTenantResult.fromMap(result);
}
