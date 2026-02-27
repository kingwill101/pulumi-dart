import 'package:pulumi/pulumi.dart';
import 'get_ami_ids_args2.dart';
import 'get_ami_ids_result2.dart';

/// Use this data source to get a list of AMI IDs matching the specified criteria.
Future<GetAmiIdsResult2> getAmiIds2(
  GetAmiIdsArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getAmiIds:getAmiIds',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAmiIdsResult2.fromMap(result);
}
