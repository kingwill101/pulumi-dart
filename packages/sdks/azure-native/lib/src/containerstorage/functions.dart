import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_args.dart';
import 'get_pool_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';
import 'get_volume_args.dart';
import 'get_volume_result.dart';

/// Get a Pool
///
/// Uses Azure REST API version 2023-07-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerstorage_get_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoolResult> getPool(
  GetPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerstorage:getPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoolResult.fromMap(result);
}

pulumi.Output<GetPoolResult> getPoolOutput(
  GetPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerstorage:getPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPoolResult.fromMap);
}

/// Get a Snapshot
///
/// Uses Azure REST API version 2023-07-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerstorage_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerstorage:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

pulumi.Output<GetSnapshotResult> getSnapshotOutput(
  GetSnapshotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerstorage:getSnapshot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSnapshotResult.fromMap);
}

/// Get a Volume
///
/// Uses Azure REST API version 2023-07-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerstorage_get_volume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeResult> getVolume(
  GetVolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerstorage:getVolume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeResult.fromMap(result);
}

pulumi.Output<GetVolumeResult> getVolumeOutput(
  GetVolumeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerstorage:getVolume',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVolumeResult.fromMap);
}
