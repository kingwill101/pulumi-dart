import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_record_set_args.dart';
import 'get_private_record_set_result.dart';
import 'get_private_zone_args.dart';
import 'get_private_zone_result.dart';
import 'get_virtual_network_link_args.dart';
import 'get_virtual_network_link_result.dart';

/// Gets a record set.
///
/// Uses Azure REST API version 2024-06-01.
///
/// Other available API versions: 2018-09-01, 2020-01-01, 2020-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native privatedns [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_private_record_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateRecordSetResult> getPrivateRecordSet(
  GetPrivateRecordSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:privatedns:getPrivateRecordSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateRecordSetResult.fromMap(result);
}

/// Gets a Private DNS zone. Retrieves the zone properties, but not the virtual networks links or the record sets within the zone.
///
/// Uses Azure REST API version 2024-06-01.
///
/// Other available API versions: 2018-09-01, 2020-01-01, 2020-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native privatedns [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_private_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateZoneResult> getPrivateZone(
  GetPrivateZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:privatedns:getPrivateZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateZoneResult.fromMap(result);
}

/// Gets a virtual network link to the specified Private DNS zone.
///
/// Uses Azure REST API version 2024-06-01.
///
/// Other available API versions: 2018-09-01, 2020-01-01, 2020-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native privatedns [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_virtual_network_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkLinkResult> getVirtualNetworkLink(
  GetVirtualNetworkLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:privatedns:getVirtualNetworkLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkLinkResult.fromMap(result);
}
