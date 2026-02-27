import 'package:pulumi/pulumi.dart';
import 'get_parameter_group_args2.dart';
import 'get_parameter_group_result2.dart';

/// Information about a database parameter group.
Future<GetParameterGroupResult2> getParameterGroup2(
  GetParameterGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getParameterGroup:getParameterGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetParameterGroupResult2.fromMap(result);
}
