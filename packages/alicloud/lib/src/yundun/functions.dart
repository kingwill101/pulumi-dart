import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bastion_host_instances_args.dart';
import 'get_bastion_host_instances_result.dart';
import 'get_dbaudit_instance_args.dart';
import 'get_dbaudit_instance_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_yundun_get_bastion_host_instances_get_bastion_host_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBastionHostInstancesResult> getBastionHostInstances(
  GetBastionHostInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:yundun/getBastionHostInstances:getBastionHostInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBastionHostInstancesResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_yundun_get_dbaudit_instance_get_dbaudit_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDBAuditInstanceResult> getDBAuditInstance(
  GetDBAuditInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:yundun/getDBAuditInstance:getDBAuditInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDBAuditInstanceResult.fromMap(result);
}
