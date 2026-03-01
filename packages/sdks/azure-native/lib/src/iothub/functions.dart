import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_iot_hub_resource_args.dart';
import 'get_iot_hub_resource_event_hub_consumer_group_args.dart';
import 'get_iot_hub_resource_event_hub_consumer_group_result.dart';
import 'get_iot_hub_resource_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'list_iot_hub_resource_keys_args.dart';
import 'list_iot_hub_resource_keys_for_key_name_args.dart';
import 'list_iot_hub_resource_keys_for_key_name_result.dart';
import 'list_iot_hub_resource_keys_result.dart';

/// Returns the certificate.
///
/// Uses Azure REST API version 2023-06-30.
///
/// Other available API versions: 2017-07-01, 2018-01-22, 2018-04-01, 2018-12-01-preview, 2019-03-22, 2019-03-22-preview, 2019-07-01-preview, 2019-11-04, 2020-03-01, 2020-04-01, 2020-06-15, 2020-07-10-preview, 2020-08-01, 2020-08-31, 2020-08-31-preview, 2021-02-01-preview, 2021-03-03-preview, 2021-03-31, 2021-07-01, 2021-07-01-preview, 2021-07-02, 2021-07-02-preview, 2022-04-30-preview, 2022-11-15-preview, 2023-06-30-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iothub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iothub_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iothub:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Get the non-security related metadata of an IoT hub.
///
/// Uses Azure REST API version 2023-06-30.
///
/// Other available API versions: 2016-02-03, 2017-01-19, 2017-07-01, 2018-01-22, 2018-04-01, 2018-12-01-preview, 2019-03-22, 2019-03-22-preview, 2019-07-01-preview, 2019-11-04, 2020-03-01, 2020-04-01, 2020-06-15, 2020-07-10-preview, 2020-08-01, 2020-08-31, 2020-08-31-preview, 2021-02-01-preview, 2021-03-03-preview, 2021-03-31, 2021-07-01, 2021-07-01-preview, 2021-07-02, 2021-07-02-preview, 2022-04-30-preview, 2022-11-15-preview, 2023-06-30-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iothub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iothub_get_iot_hub_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIotHubResourceResult> getIotHubResource(
  GetIotHubResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iothub:getIotHubResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIotHubResourceResult.fromMap(result);
}

/// Get a consumer group from the Event Hub-compatible device-to-cloud endpoint for an IoT hub.
///
/// Uses Azure REST API version 2023-06-30.
///
/// Other available API versions: 2016-02-03, 2017-01-19, 2017-07-01, 2018-01-22, 2018-04-01, 2018-12-01-preview, 2019-03-22, 2019-03-22-preview, 2019-07-01-preview, 2019-11-04, 2020-03-01, 2020-04-01, 2020-06-15, 2020-07-10-preview, 2020-08-01, 2020-08-31, 2020-08-31-preview, 2021-02-01-preview, 2021-03-03-preview, 2021-03-31, 2021-07-01, 2021-07-01-preview, 2021-07-02, 2021-07-02-preview, 2022-04-30-preview, 2022-11-15-preview, 2023-06-30-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iothub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iothub_get_iot_hub_resource_event_hub_consumer_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIotHubResourceEventHubConsumerGroupResult> getIotHubResourceEventHubConsumerGroup(
  GetIotHubResourceEventHubConsumerGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iothub:getIotHubResourceEventHubConsumerGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIotHubResourceEventHubConsumerGroupResult.fromMap(result);
}

/// Get private endpoint connection properties
///
/// Uses Azure REST API version 2023-06-30.
///
/// Other available API versions: 2020-03-01, 2020-04-01, 2020-06-15, 2020-07-10-preview, 2020-08-01, 2020-08-31, 2020-08-31-preview, 2021-02-01-preview, 2021-03-03-preview, 2021-03-31, 2021-07-01, 2021-07-01-preview, 2021-07-02, 2021-07-02-preview, 2022-04-30-preview, 2022-11-15-preview, 2023-06-30-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iothub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iothub_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iothub:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Get the security metadata for an IoT hub. For more information, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-security.
///
/// Uses Azure REST API version 2023-06-30.
///
/// Other available API versions: 2016-02-03, 2017-01-19, 2017-07-01, 2018-01-22, 2018-04-01, 2018-12-01-preview, 2019-03-22, 2019-03-22-preview, 2019-07-01-preview, 2019-11-04, 2020-03-01, 2020-04-01, 2020-06-15, 2020-07-10-preview, 2020-08-01, 2020-08-31, 2020-08-31-preview, 2021-02-01-preview, 2021-03-03-preview, 2021-03-31, 2021-07-01, 2021-07-01-preview, 2021-07-02, 2021-07-02-preview, 2022-04-30-preview, 2022-11-15-preview, 2023-06-30-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iothub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iothub_list_iot_hub_resource_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIotHubResourceKeysResult> listIotHubResourceKeys(
  ListIotHubResourceKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iothub:listIotHubResourceKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIotHubResourceKeysResult.fromMap(result);
}

/// Get a shared access policy by name from an IoT hub. For more information, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-security.
///
/// Uses Azure REST API version 2023-06-30.
///
/// Other available API versions: 2016-02-03, 2017-01-19, 2017-07-01, 2018-01-22, 2018-04-01, 2018-12-01-preview, 2019-03-22, 2019-03-22-preview, 2019-07-01-preview, 2019-11-04, 2020-03-01, 2020-04-01, 2020-06-15, 2020-07-10-preview, 2020-08-01, 2020-08-31, 2020-08-31-preview, 2021-02-01-preview, 2021-03-03-preview, 2021-03-31, 2021-07-01, 2021-07-01-preview, 2021-07-02, 2021-07-02-preview, 2022-04-30-preview, 2022-11-15-preview, 2023-06-30-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iothub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iothub_list_iot_hub_resource_keys_for_key_name_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIotHubResourceKeysForKeyNameResult> listIotHubResourceKeysForKeyName(
  ListIotHubResourceKeysForKeyNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iothub:listIotHubResourceKeysForKeyName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIotHubResourceKeysForKeyNameResult.fromMap(result);
}
