import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_android_mampolicy_by_name_args.dart';
import 'get_android_mampolicy_by_name_result.dart';
import 'get_io_mampolicy_by_name_args.dart';
import 'get_io_mampolicy_by_name_result.dart';

/// Returns AndroidMAMPolicy with given name.
///
/// Uses Azure REST API version 2015-01-14-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_intune_get_android_mampolicy_by_name_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAndroidMAMPolicyByNameResult> getAndroidMAMPolicyByName(
  GetAndroidMAMPolicyByNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:intune:getAndroidMAMPolicyByName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAndroidMAMPolicyByNameResult.fromMap(result);
}

pulumi.Output<GetAndroidMAMPolicyByNameResult> getAndroidMAMPolicyByNameOutput(
  GetAndroidMAMPolicyByNameArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:intune:getAndroidMAMPolicyByName',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAndroidMAMPolicyByNameResult.fromMap);
}

/// Returns Intune iOS policies.
///
/// Uses Azure REST API version 2015-01-14-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_intune_get_io_mampolicy_by_name_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIoMAMPolicyByNameResult> getIoMAMPolicyByName(
  GetIoMAMPolicyByNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:intune:getIoMAMPolicyByName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIoMAMPolicyByNameResult.fromMap(result);
}

pulumi.Output<GetIoMAMPolicyByNameResult> getIoMAMPolicyByNameOutput(
  GetIoMAMPolicyByNameArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:intune:getIoMAMPolicyByName',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIoMAMPolicyByNameResult.fromMap);
}
