import 'package:pulumi/pulumi.dart';
import 'get_subnet_group_args4.dart';
import 'get_subnet_group_result4.dart';

/// Provides details about a specific redshift subnet group.
Future<GetSubnetGroupResult4> getSubnetGroup4(
  GetSubnetGroupArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupResult4.fromMap(result);
}
