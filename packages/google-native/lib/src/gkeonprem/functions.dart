import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bare_metal_admin_cluster_args.dart';
import 'get_bare_metal_admin_cluster_iam_policy_args.dart';
import 'get_bare_metal_admin_cluster_iam_policy_result.dart';
import 'get_bare_metal_admin_cluster_result.dart';
import 'get_bare_metal_cluster_args.dart';
import 'get_bare_metal_cluster_bare_metal_node_pool_iam_policy_args.dart';
import 'get_bare_metal_cluster_bare_metal_node_pool_iam_policy_result.dart';
import 'get_bare_metal_cluster_iam_policy_args.dart';
import 'get_bare_metal_cluster_iam_policy_result.dart';
import 'get_bare_metal_cluster_result.dart';
import 'get_bare_metal_node_pool_args.dart';
import 'get_bare_metal_node_pool_result.dart';
import 'get_vmware_admin_cluster_iam_policy_args.dart';
import 'get_vmware_admin_cluster_iam_policy_result.dart';
import 'get_vmware_cluster_args.dart';
import 'get_vmware_cluster_iam_policy_args.dart';
import 'get_vmware_cluster_iam_policy_result.dart';
import 'get_vmware_cluster_result.dart';
import 'get_vmware_cluster_vmware_node_pool_iam_policy_args.dart';
import 'get_vmware_cluster_vmware_node_pool_iam_policy_result.dart';
import 'get_vmware_node_pool_args.dart';
import 'get_vmware_node_pool_result.dart';

/// Gets details of a single bare metal admin cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_bare_metal_admin_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalAdminClusterResult> getBareMetalAdminCluster(
  GetBareMetalAdminClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalAdminCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalAdminClusterResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_bare_metal_admin_cluster_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalAdminClusterIamPolicyResult>
getBareMetalAdminClusterIamPolicy(
  GetBareMetalAdminClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalAdminClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalAdminClusterIamPolicyResult.fromMap(result);
}

/// Gets details of a single bare metal Cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_bare_metal_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalClusterResult> getBareMetalCluster(
  GetBareMetalClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalClusterResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_bare_metal_cluster_bare_metal_node_pool_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalClusterBareMetalNodePoolIamPolicyResult>
getBareMetalClusterBareMetalNodePoolIamPolicy(
  GetBareMetalClusterBareMetalNodePoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalClusterBareMetalNodePoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalClusterBareMetalNodePoolIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_bare_metal_cluster_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalClusterIamPolicyResult> getBareMetalClusterIamPolicy(
  GetBareMetalClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalClusterIamPolicyResult.fromMap(result);
}

/// Gets details of a single bare metal node pool.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_bare_metal_node_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalNodePoolResult> getBareMetalNodePool(
  GetBareMetalNodePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalNodePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalNodePoolResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_vmware_admin_cluster_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmwareAdminClusterIamPolicyResult> getVmwareAdminClusterIamPolicy(
  GetVmwareAdminClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareAdminClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareAdminClusterIamPolicyResult.fromMap(result);
}

/// Gets details of a single VMware Cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_vmware_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmwareClusterResult> getVmwareCluster(
  GetVmwareClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareClusterResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_vmware_cluster_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmwareClusterIamPolicyResult> getVmwareClusterIamPolicy(
  GetVmwareClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareClusterIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_vmware_cluster_vmware_node_pool_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmwareClusterVmwareNodePoolIamPolicyResult>
getVmwareClusterVmwareNodePoolIamPolicy(
  GetVmwareClusterVmwareNodePoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareClusterVmwareNodePoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareClusterVmwareNodePoolIamPolicyResult.fromMap(result);
}

/// Gets details of a single VMware node pool.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_vmware_node_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmwareNodePoolResult> getVmwareNodePool(
  GetVmwareNodePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareNodePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareNodePoolResult.fromMap(result);
}
