import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ancestry_args.dart';
import 'get_ancestry_result.dart';

/// Retrieve the ancestors for a project.
/// See the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/getAncestry) for more details.
Future<GetAncestryResult> getAncestry(
  GetAncestryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getAncestry:getAncestry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAncestryResult.fromMap(result);
}
