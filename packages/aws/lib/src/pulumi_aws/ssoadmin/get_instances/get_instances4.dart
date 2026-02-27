import 'package:pulumi/pulumi.dart';
import 'get_instances_args4.dart';
import 'get_instances_result4.dart';

/// Use this data source to get ARNs and Identity Store IDs of Single Sign-On (SSO) Instances.
Future<GetInstancesResult4> getInstances4(
  GetInstancesArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getInstances:getInstances',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult4.fromMap(result);
}
