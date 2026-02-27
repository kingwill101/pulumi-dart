import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_ids_ec2_args.dart';
import 'get_ami_ids_ec2_result.dart';

/// Use this data source to get a list of AMI IDs matching the specified criteria.
Future<GetAmiIdsEc2Result> getAmiIdsEc2(
  GetAmiIdsEc2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getAmiIds:getAmiIds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAmiIdsEc2Result.fromMap(result);
}
