import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elastic_san_args.dart';
import 'get_elastic_san_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_volume_args.dart';
import 'get_volume_group_args.dart';
import 'get_volume_group_result.dart';
import 'get_volume_result.dart';
import 'get_volume_snapshot_args.dart';
import 'get_volume_snapshot_result.dart';

/// Get a ElasticSan.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-11-20-preview, 2022-12-01-preview, 2023-01-01, 2024-06-01-preview, 2024-07-01-preview, 2025-09-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elasticsan [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticsan_get_elastic_san_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticSanResult> getElasticSan(
  GetElasticSanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elasticsan:getElasticSan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticSanResult.fromMap(result);
}

/// Gets the specified private endpoint connection associated with the Elastic San
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-12-01-preview, 2023-01-01, 2024-06-01-preview, 2024-07-01-preview, 2025-09-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elasticsan [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticsan_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elasticsan:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Get an Volume.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-11-20-preview, 2022-12-01-preview, 2023-01-01, 2024-06-01-preview, 2024-07-01-preview, 2025-09-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elasticsan [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticsan_get_volume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeResult> getVolume(
  GetVolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elasticsan:getVolume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeResult.fromMap(result);
}

/// Get an VolumeGroups.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-11-20-preview, 2022-12-01-preview, 2023-01-01, 2024-06-01-preview, 2024-07-01-preview, 2025-09-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elasticsan [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticsan_get_volume_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeGroupResult> getVolumeGroup(
  GetVolumeGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elasticsan:getVolumeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeGroupResult.fromMap(result);
}

/// Get a Volume Snapshot.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-01-01, 2024-06-01-preview, 2024-07-01-preview, 2025-09-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elasticsan [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticsan_get_volume_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeSnapshotResult> getVolumeSnapshot(
  GetVolumeSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elasticsan:getVolumeSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeSnapshotResult.fromMap(result);
}
