import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_ssm_args.dart';
import 'get_instances_ssm_result.dart';

/// Use this data source to get the instance IDs of SSM managed instances.
Future<GetInstancesSsmResult> getInstancesSsm(
  GetInstancesSsmArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesSsmResult.fromMap(result);
}
