import 'package:pulumi/pulumi.dart';
import 'get_management_dns_zone_binding_args.dart';
import 'get_management_dns_zone_binding_result.dart';

/// Retrieves a 'ManagementDnsZoneBinding' resource by its resource name.
Future<GetManagementDnsZoneBindingResult> getManagementDnsZoneBinding(
  GetManagementDnsZoneBindingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getManagementDnsZoneBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagementDnsZoneBindingResult.fromMap(result);
}
