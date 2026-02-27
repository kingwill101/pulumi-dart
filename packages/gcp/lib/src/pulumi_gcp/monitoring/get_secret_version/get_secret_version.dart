import 'package:pulumi/pulumi.dart';
import 'get_secret_version_args.dart';
import 'get_secret_version_result.dart';

/// Get the value and metadata from a Secret Manager secret version. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.secrets.versions). If you don't need the metadata (i.e., if you want to use a more limited role to access the secret version only), see also the gcp.secretmanager.getSecretVersionAccess datasource.
Future<GetSecretVersionResult> getSecretVersion(
  GetSecretVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getSecretVersion:getSecretVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionResult.fromMap(result);
}
