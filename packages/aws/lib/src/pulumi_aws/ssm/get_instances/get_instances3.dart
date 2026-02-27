import 'package:pulumi/pulumi.dart';
import 'get_instances_args3.dart';
import 'get_instances_result3.dart';

/// Use this data source to get the instance IDs of SSM managed instances.
Future<GetInstancesResult3> getInstances3(
  GetInstancesArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getInstances:getInstances',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult3.fromMap(result);
}
