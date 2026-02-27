import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_secret_version_args.dart';
import 'get_regional_secret_version_result.dart';

/// subcategory: "Secret Manager"
/// description: |-
/// Get a Secret Manager regional secret's version.
/// ---
///
/// Get the value and metadata from a Secret Manager regional secret version. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/regional-secrets-overview) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.locations.secrets.versions). If you don't need the metadata (i.e., if you want to use a more limited role to access the regional secret version only), see also the gcp.secretmanager.getRegionalSecretVersionAccess datasource.
Future<GetRegionalSecretVersionResult> getRegionalSecretVersion(
  GetRegionalSecretVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecretVersion:getRegionalSecretVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretVersionResult.fromMap(result);
}
