import 'package:pulumi/pulumi.dart';
import 'get_distribution_tenant_args.dart';
import 'get_distribution_tenant_result.dart';

/// Use this data source to retrieve information about a CloudFront distribution tenant.
Future<GetDistributionTenantResult> getDistributionTenant(
  GetDistributionTenantArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getDistributionTenant:getDistributionTenant',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDistributionTenantResult.fromMap(result);
}
