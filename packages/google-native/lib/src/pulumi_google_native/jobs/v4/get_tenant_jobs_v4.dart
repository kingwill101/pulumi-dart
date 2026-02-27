import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tenant_jobs_v4_args.dart';
import 'get_tenant_jobs_v4_result.dart';

/// Retrieves specified tenant.
Future<GetTenantJobsV4Result> getTenantJobsV4(
  GetTenantJobsV4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v4:getTenant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTenantJobsV4Result.fromMap(result);
}
