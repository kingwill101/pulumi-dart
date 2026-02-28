import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_args.dart';
import 'get_device_result.dart';
import 'get_registry_args.dart';
import 'get_registry_group_iam_policy_args.dart';
import 'get_registry_group_iam_policy_result.dart';
import 'get_registry_iam_policy_args.dart';
import 'get_registry_iam_policy_result.dart';
import 'get_registry_result.dart';

/// Gets details about a device.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudiot_v1_get_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceResult> getDevice(
  GetDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult.fromMap(result);
}

/// Gets a device registry configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudiot_v1_get_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryResult> getRegistry(
  GetRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudiot_v1_get_registry_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryGroupIamPolicyResult> getRegistryGroupIamPolicy(
  GetRegistryGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getRegistryGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryGroupIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudiot_v1_get_registry_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryIamPolicyResult> getRegistryIamPolicy(
  GetRegistryIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getRegistryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryIamPolicyResult.fromMap(result);
}
