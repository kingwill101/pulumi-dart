import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_lookup_args.dart';
import 'get_group_lookup_result.dart';

/// Use this data source to look up the resource name of a Cloud Identity Group by its [EntityKey](https://cloud.google.com/identity/docs/reference/rest/v1/EntityKey), i.e. the group's email.
///
/// https://cloud.google.com/identity/docs/concepts/overview#groups
Future<GetGroupLookupResult> getGroupLookup(
  GetGroupLookupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroupLookup:getGroupLookup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupLookupResult.fromMap(result);
}
