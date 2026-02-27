import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entry_group_iam_policy_datacatalog_v1beta1_args.dart';
import 'get_entry_group_iam_policy_datacatalog_v1beta1_result.dart';

/// Gets the access control policy for a resource. A `NOT_FOUND` error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it. Supported resources are: - Tag templates. - Entries. - Entry groups. Note, this method cannot be used to manage policies for BigQuery, Pub/Sub and any external Google Cloud Platform resources synced to Data Catalog. Callers must have following Google IAM permission - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates. - `datacatalog.entries.getIamPolicy` to get policies on entries. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.
Future<GetEntryGroupIamPolicyDatacatalogV1beta1Result>
    getEntryGroupIamPolicyDatacatalogV1beta1(
  GetEntryGroupIamPolicyDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getEntryGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyDatacatalogV1beta1Result.fromMap(result);
}
