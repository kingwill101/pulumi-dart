import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entity_path_args.dart';
import 'get_entity_path_result.dart';

/// Get the [entity path](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_last-accessed-view-data-orgs.html#access_policies_last-accessed-viewing-orgs-entity-path) for an entity. An entity's path is the text representation of the structure of that AWS Organizations entity.
Future<GetEntityPathResult> getEntityPath(
  GetEntityPathArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getEntityPath:getEntityPath',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityPathResult.fromMap(result);
}
