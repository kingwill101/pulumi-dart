import 'package:pulumi/pulumi.dart';
import 'get_regional_secret_version_access_args.dart';
import 'get_regional_secret_version_access_result.dart';

/// subcategory: "Secret Manager"
/// page_title: "Google: gcp.secretmanager.getRegionalSecretVersionAccess"
/// description: |-
/// Get a payload of Secret Manager regional secret's version.
/// ---
///
/// Get the value from a Secret Manager regional secret version. This is similar to the gcp.secretmanager.RegionalSecretVersion datasource, but it only requires the [Secret Manager Secret Accessor](https://cloud.google.com/secret-manager/docs/access-control#secretmanager.secretAccessor) role. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/regional-secrets-overview) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.locations.secrets.versions/access).
Future<GetRegionalSecretVersionAccessResult> getRegionalSecretVersionAccess(
  GetRegionalSecretVersionAccessArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecretVersionAccess:getRegionalSecretVersionAccess',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretVersionAccessResult.fromMap(result);
}
