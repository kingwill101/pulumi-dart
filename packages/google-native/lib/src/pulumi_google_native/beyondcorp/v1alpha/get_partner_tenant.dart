import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_partner_tenant_args.dart';
import 'get_partner_tenant_result.dart';

/// Gets details of a single PartnerTenant.
Future<GetPartnerTenantResult> getPartnerTenant(
  GetPartnerTenantArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getPartnerTenant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerTenantResult.fromMap(result);
}
