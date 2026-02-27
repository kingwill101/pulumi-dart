import 'package:pulumi/pulumi.dart';
import 'get_group_args2.dart';
import 'get_group_result2.dart';

/// This data source can be used to fetch information about a specific
/// IAM group. By using this data source, you can reference IAM group
/// properties without having to hard code ARNs as input.
Future<GetGroupResult2> getGroup2(
  GetGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getGroup:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult2.fromMap(result);
}
