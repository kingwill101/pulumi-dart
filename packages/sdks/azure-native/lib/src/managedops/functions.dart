import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_op_args.dart';
import 'get_managed_op_result.dart';

/// Gets the information of the ManagedOps instance.
///
/// Uses Azure REST API version 2025-07-28-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedops_get_managed_op_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedOpResult> getManagedOp(
  GetManagedOpArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managedops:getManagedOp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedOpResult.fromMap(result);
}

pulumi.Output<GetManagedOpResult> getManagedOpOutput(
  GetManagedOpArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managedops:getManagedOp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedOpResult.fromMap);
}
