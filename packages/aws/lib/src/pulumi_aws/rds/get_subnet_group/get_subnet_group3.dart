import 'package:pulumi/pulumi.dart';
import 'get_subnet_group_args3.dart';
import 'get_subnet_group_result3.dart';

/// Use this data source to get information about an RDS subnet group.
Future<GetSubnetGroupResult3> getSubnetGroup3(
  GetSubnetGroupArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupResult3.fromMap(result);
}
