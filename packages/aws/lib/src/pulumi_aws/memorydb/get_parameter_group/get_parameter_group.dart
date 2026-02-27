import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameter_group_args.dart';
import 'get_parameter_group_result.dart';

/// Provides information about a MemoryDB Parameter Group.
Future<GetParameterGroupResult> getParameterGroup(
  GetParameterGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getParameterGroup:getParameterGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParameterGroupResult.fromMap(result);
}
