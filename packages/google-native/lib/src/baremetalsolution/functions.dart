import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nfs_share_args.dart';
import 'get_nfs_share_result.dart';
import 'get_provisioning_config_args.dart';
import 'get_provisioning_config_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';

/// Get details of a single NFS share.
/// [args] Arguments passed to this invoke. {@macro pulumi_baremetalsolution_v2_get_nfs_share_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNfsShareResult> getNfsShare(
  GetNfsShareArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:baremetalsolution/v2:getNfsShare',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNfsShareResult.fromMap(result);
}

/// Get ProvisioningConfig by name.
/// [args] Arguments passed to this invoke. {@macro pulumi_baremetalsolution_v2_get_provisioning_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProvisioningConfigResult> getProvisioningConfig(
  GetProvisioningConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:baremetalsolution/v2:getProvisioningConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProvisioningConfigResult.fromMap(result);
}

/// Returns the specified snapshot resource. Returns INVALID_ARGUMENT if called for a non-boot volume.
/// [args] Arguments passed to this invoke. {@macro pulumi_baremetalsolution_v2_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:baremetalsolution/v2:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}
