import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_args.dart';
import 'get_job_result.dart';
import 'list_bit_locker_key_args.dart';
import 'list_bit_locker_key_result.dart';

/// Gets information about an existing job.
///
/// Uses Azure REST API version 2021-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_importexport_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:importexport:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}

pulumi.Output<GetJobResult> getJobOutput(
  GetJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:importexport:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobResult.fromMap);
}

/// Returns the BitLocker Keys for all drives in the specified job.
///
/// Uses Azure REST API version 2021-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_importexport_list_bit_locker_key_args_doc}
/// [options] Invoke options controlling this call.
Future<ListBitLockerKeyResult> listBitLockerKey(
  ListBitLockerKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:importexport:listBitLockerKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListBitLockerKeyResult.fromMap(result);
}

pulumi.Output<ListBitLockerKeyResult> listBitLockerKeyOutput(
  ListBitLockerKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:importexport:listBitLockerKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListBitLockerKeyResult.fromMap);
}
