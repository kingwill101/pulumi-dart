import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_version_access_args.dart';
import 'get_secret_version_access_result.dart';

/// Get the value from a Secret Manager secret version. This is similar to the gcp.secretmanager.SecretVersion datasource, but it only requires the [Secret Manager Secret Accessor](https://cloud.google.com/secret-manager/docs/access-control#secretmanager.secretAccessor) role. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.secrets.versions/access).
Future<GetSecretVersionAccessResult> getSecretVersionAccess(
  GetSecretVersionAccessArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecretVersionAccess:getSecretVersionAccess',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionAccessResult.fromMap(result);
}
