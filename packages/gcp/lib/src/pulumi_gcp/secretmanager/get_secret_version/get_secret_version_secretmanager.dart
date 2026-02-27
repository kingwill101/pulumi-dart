import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_version_secretmanager_args.dart';
import 'get_secret_version_secretmanager_result.dart';

/// Get the value and metadata from a Secret Manager secret version. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.secrets.versions). If you don't need the metadata (i.e., if you want to use a more limited role to access the secret version only), see also the gcp.secretmanager.getSecretVersionAccess datasource.
Future<GetSecretVersionSecretmanagerResult> getSecretVersionSecretmanager(
  GetSecretVersionSecretmanagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecretVersion:getSecretVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionSecretmanagerResult.fromMap(result);
}
