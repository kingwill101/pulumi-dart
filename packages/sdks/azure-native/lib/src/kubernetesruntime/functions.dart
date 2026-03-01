import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bgp_peer_args.dart';
import 'get_bgp_peer_result.dart';
import 'get_load_balancer_args.dart';
import 'get_load_balancer_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_storage_class_args.dart';
import 'get_storage_class_result.dart';

/// Get a BgpPeer
///
/// Uses Azure REST API version 2024-03-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_kubernetesruntime_get_bgp_peer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBgpPeerResult> getBgpPeer(
  GetBgpPeerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kubernetesruntime:getBgpPeer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBgpPeerResult.fromMap(result);
}

/// Get a LoadBalancer
///
/// Uses Azure REST API version 2024-03-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_kubernetesruntime_get_load_balancer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancerResult> getLoadBalancer(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kubernetesruntime:getLoadBalancer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerResult.fromMap(result);
}

/// Get a ServiceResource
///
/// Uses Azure REST API version 2024-03-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_kubernetesruntime_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kubernetesruntime:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Get a StorageClassResource
///
/// Uses Azure REST API version 2024-03-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_kubernetesruntime_get_storage_class_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageClassResult> getStorageClass(
  GetStorageClassArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kubernetesruntime:getStorageClass',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageClassResult.fromMap(result);
}
