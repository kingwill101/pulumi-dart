import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_resource_reference_by_tar_resources_args.dart';
import 'get_dns_resource_reference_by_tar_resources_result.dart';
import 'get_dnssec_config_args.dart';
import 'get_dnssec_config_result.dart';
import 'get_record_set_args.dart';
import 'get_record_set_result.dart';
import 'get_zone_args.dart';
import 'get_zone_result.dart';

/// Returns the DNS records specified by the referencing targetResourceIds.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2018-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dns [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_dns_resource_reference_by_tar_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnsResourceReferenceByTarResourcesResult> getDnsResourceReferenceByTarResources(
  GetDnsResourceReferenceByTarResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dns:getDnsResourceReferenceByTarResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsResourceReferenceByTarResourcesResult.fromMap(result);
}

/// Gets the DNSSEC configuration.
///
/// Uses Azure REST API version 2023-07-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_dnssec_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnssecConfigResult> getDnssecConfig(
  GetDnssecConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dns:getDnssecConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnssecConfigResult.fromMap(result);
}

/// Gets a record set.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2015-05-04-preview, 2016-04-01, 2017-09-01, 2017-10-01, 2018-03-01-preview, 2018-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dns [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_record_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRecordSetResult> getRecordSet(
  GetRecordSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dns:getRecordSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRecordSetResult.fromMap(result);
}

/// Gets a DNS zone. Retrieves the zone properties, but not the record sets within the zone.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2015-05-04-preview, 2016-04-01, 2017-09-01, 2017-10-01, 2018-03-01-preview, 2018-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dns [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZoneResult> getZone(
  GetZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dns:getZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneResult.fromMap(result);
}
