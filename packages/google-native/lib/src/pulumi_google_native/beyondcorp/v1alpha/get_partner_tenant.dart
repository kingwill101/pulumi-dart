import 'package:pulumi/pulumi.dart';
import 'get_partner_tenant_args.dart';
import 'get_partner_tenant_result.dart';

/// Gets details of a single PartnerTenant.
Future<GetPartnerTenantResult> getPartnerTenant(
  GetPartnerTenantArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getPartnerTenant',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPartnerTenantResult.fromMap(result);
}
