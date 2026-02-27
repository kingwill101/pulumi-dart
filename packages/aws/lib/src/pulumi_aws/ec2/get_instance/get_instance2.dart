import 'package:pulumi/pulumi.dart';
import 'get_instance_args2.dart';
import 'get_instance_result2.dart';

/// Use this data source to get the ID of an Amazon EC2 Instance for use in other resources.
Future<GetInstanceResult2> getInstance2(
  GetInstanceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult2.fromMap(result);
}
