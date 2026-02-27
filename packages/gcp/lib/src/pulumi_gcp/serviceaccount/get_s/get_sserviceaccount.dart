import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sserviceaccount_args.dart';
import 'get_sserviceaccount_result.dart';

/// Gets a list of all service accounts from a project.
/// See [the official documentation](https://cloud.google.com/iam/docs/service-account-overview)
/// and [API](https://cloud.google.com/iam/docs/reference/rest/v1/projects.serviceAccounts).
///
/// ## Example Usage
///
/// Get all service accounts from a project
///
///
///
/// Get all service accounts that are prefixed with `"foo"`
///
///
///
/// Get all service accounts that contain `"bar"`
///
///
///
/// Get all service accounts that are prefixed with `"foo"` and contain `"bar"`
Future<GetSServiceaccountResult> getSServiceaccount(
  GetSServiceaccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getS:getS',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSServiceaccountResult.fromMap(result);
}
