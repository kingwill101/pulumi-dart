import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_ec2_args.dart';
import 'get_instance_ec2_result.dart';

/// Use this data source to get the ID of an Amazon EC2 Instance for use in other resources.
Future<GetInstanceEc2Result> getInstanceEc2(
  GetInstanceEc2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceEc2Result.fromMap(result);
}
