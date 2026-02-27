import 'package:pulumi/pulumi.dart';
import 'get_sargs.dart';
import 'get_sresult.dart';

/// Gets a list of all organizations.
/// See [the official documentation](https://docs.cloud.google.com/resource-manager/docs/creating-managing-organization)
/// and [API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/organizations/search).
Future<GetSResult> getS(
  GetSArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getS:getS',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSResult.fromMap(result);
}
