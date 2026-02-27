import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_args.dart';
import 'get_groups_result.dart';

/// Use this data source to get list of the Cloud Identity Groups under a customer or namespace.
///
/// https://cloud.google.com/identity/docs/concepts/overview#groups
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroups:getGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}
