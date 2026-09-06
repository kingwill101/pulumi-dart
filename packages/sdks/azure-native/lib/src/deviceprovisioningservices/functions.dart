import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dps_certificate_args.dart';
import 'get_dps_certificate_result.dart';
import 'get_iot_dps_resource_args.dart';
import 'get_iot_dps_resource_private_endpoint_connection_args.dart';
import 'get_iot_dps_resource_private_endpoint_connection_result.dart';
import 'get_iot_dps_resource_result.dart';
import 'list_iot_dps_resource_keys_args.dart';
import 'list_iot_dps_resource_keys_for_key_name_args.dart';
import 'list_iot_dps_resource_keys_for_key_name_result.dart';
import 'list_iot_dps_resource_keys_result.dart';

/// Get the certificate from the provisioning service.
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// Other available API versions: 2017-08-21-preview, 2017-11-15, 2018-01-22, 2020-01-01, 2020-03-01, 2020-09-01-preview, 2021-10-15, 2022-02-05, 2022-12-12, 2025-02-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceprovisioningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceprovisioningservices_get_dps_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDpsCertificateResult> getDpsCertificate(
  GetDpsCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceprovisioningservices:getDpsCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDpsCertificateResult.fromMap(result);
}

pulumi.Output<GetDpsCertificateResult> getDpsCertificateOutput(
  GetDpsCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceprovisioningservices:getDpsCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDpsCertificateResult.fromMap);
}

/// Get the metadata of the provisioning service without SAS keys.
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// Other available API versions: 2017-08-21-preview, 2017-11-15, 2018-01-22, 2020-01-01, 2020-03-01, 2020-09-01-preview, 2021-10-15, 2022-02-05, 2022-12-12, 2025-02-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceprovisioningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceprovisioningservices_get_iot_dps_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIotDpsResourceResult> getIotDpsResource(
  GetIotDpsResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceprovisioningservices:getIotDpsResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIotDpsResourceResult.fromMap(result);
}

pulumi.Output<GetIotDpsResourceResult> getIotDpsResourceOutput(
  GetIotDpsResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceprovisioningservices:getIotDpsResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIotDpsResourceResult.fromMap);
}

/// Get private endpoint connection properties
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// Other available API versions: 2020-03-01, 2020-09-01-preview, 2021-10-15, 2022-02-05, 2022-12-12, 2025-02-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceprovisioningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceprovisioningservices_get_iot_dps_resource_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIotDpsResourcePrivateEndpointConnectionResult> getIotDpsResourcePrivateEndpointConnection(
  GetIotDpsResourcePrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceprovisioningservices:getIotDpsResourcePrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIotDpsResourcePrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetIotDpsResourcePrivateEndpointConnectionResult> getIotDpsResourcePrivateEndpointConnectionOutput(
  GetIotDpsResourcePrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceprovisioningservices:getIotDpsResourcePrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIotDpsResourcePrivateEndpointConnectionResult.fromMap);
}

/// List the primary and secondary keys for a provisioning service.
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// Other available API versions: 2017-08-21-preview, 2017-11-15, 2018-01-22, 2020-01-01, 2020-03-01, 2020-09-01-preview, 2021-10-15, 2022-02-05, 2022-12-12, 2025-02-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceprovisioningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceprovisioningservices_list_iot_dps_resource_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIotDpsResourceKeysResult> listIotDpsResourceKeys(
  ListIotDpsResourceKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceprovisioningservices:listIotDpsResourceKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIotDpsResourceKeysResult.fromMap(result);
}

pulumi.Output<ListIotDpsResourceKeysResult> listIotDpsResourceKeysOutput(
  ListIotDpsResourceKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceprovisioningservices:listIotDpsResourceKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIotDpsResourceKeysResult.fromMap);
}

/// List primary and secondary keys for a specific key name
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// Other available API versions: 2017-08-21-preview, 2017-11-15, 2018-01-22, 2020-01-01, 2020-03-01, 2020-09-01-preview, 2021-10-15, 2022-02-05, 2022-12-12, 2025-02-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceprovisioningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceprovisioningservices_list_iot_dps_resource_keys_for_key_name_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIotDpsResourceKeysForKeyNameResult> listIotDpsResourceKeysForKeyName(
  ListIotDpsResourceKeysForKeyNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceprovisioningservices:listIotDpsResourceKeysForKeyName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIotDpsResourceKeysForKeyNameResult.fromMap(result);
}

pulumi.Output<ListIotDpsResourceKeysForKeyNameResult> listIotDpsResourceKeysForKeyNameOutput(
  ListIotDpsResourceKeysForKeyNameArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceprovisioningservices:listIotDpsResourceKeysForKeyName',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIotDpsResourceKeysForKeyNameResult.fromMap);
}
