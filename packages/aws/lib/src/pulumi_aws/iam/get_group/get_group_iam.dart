import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_iam_args.dart';
import 'get_group_iam_result.dart';

/// This data source can be used to fetch information about a specific
/// IAM group. By using this data source, you can reference IAM group
/// properties without having to hard code ARNs as input.
Future<GetGroupIamResult> getGroupIam(
  GetGroupIamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getGroup:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupIamResult.fromMap(result);
}
