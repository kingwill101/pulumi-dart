import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_args.dart';
import 'get_instance_datafusion_v1beta1_args.dart';
import 'get_instance_datafusion_v1beta1_result.dart';
import 'get_instance_iam_policy_args.dart';
import 'get_instance_iam_policy_datafusion_v1beta1_args.dart';
import 'get_instance_iam_policy_datafusion_v1beta1_result.dart';
import 'get_instance_iam_policy_result.dart';
import 'get_instance_namespace_iam_policy_args.dart';
import 'get_instance_namespace_iam_policy_result.dart';
import 'get_instance_result.dart';

/// Gets details of a single Data Fusion instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafusion_v1_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafusion_v1_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult.fromMap(result);
}

/// Gets details of a single Data Fusion instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafusion_v1beta1_get_instance_datafusion_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceDatafusionV1beta1Result> getInstanceDatafusionV1beta1(
  GetInstanceDatafusionV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1beta1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceDatafusionV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafusion_v1beta1_get_instance_iam_policy_datafusion_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyDatafusionV1beta1Result>
    getInstanceIamPolicyDatafusionV1beta1(
  GetInstanceIamPolicyDatafusionV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1beta1:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyDatafusionV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafusion_v1beta1_get_instance_namespace_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceNamespaceIamPolicyResult> getInstanceNamespaceIamPolicy(
  GetInstanceNamespaceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1beta1:getInstanceNamespaceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceNamespaceIamPolicyResult.fromMap(result);
}
