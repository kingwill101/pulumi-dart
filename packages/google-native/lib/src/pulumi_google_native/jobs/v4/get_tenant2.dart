import 'package:pulumi/pulumi.dart' hide Config;
import 'get_tenant_args2.dart';
import 'get_tenant_result2.dart';

/// Retrieves specified tenant.
Future<GetTenantResult2> getTenant2(
  GetTenantArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v4:getTenant',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTenantResult2.fromMap(result);
}
