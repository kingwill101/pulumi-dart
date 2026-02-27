import 'package:pulumi/pulumi.dart';
import 'get_sargs2.dart';
import 'get_sresult2.dart';

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
Future<GetSResult2> getS2(
  GetSArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getS:getS',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSResult2.fromMap(result);
}
