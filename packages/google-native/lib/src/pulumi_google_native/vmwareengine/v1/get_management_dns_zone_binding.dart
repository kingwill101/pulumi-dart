import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_management_dns_zone_binding_args.dart';
import 'get_management_dns_zone_binding_result.dart';

/// Retrieves a 'ManagementDnsZoneBinding' resource by its resource name.
Future<GetManagementDnsZoneBindingResult> getManagementDnsZoneBinding(
  GetManagementDnsZoneBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getManagementDnsZoneBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementDnsZoneBindingResult.fromMap(result);
}
