import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_versions_args.dart';
import 'get_secret_versions_result.dart';

/// Retrieve the versions of a Secrets Manager secret. To retrieve secret metadata, see the data sources `aws.secretsmanager.Secret` and `aws.secretsmanager.SecretVersion`.
///
/// ## Example Usage
///
/// ### Retrieve All Versions of a Secret
///
/// By default, this data sources retrieves all versions of a secret.
///
///
///
/// ### Retrieve Specific Secret Version
///
///
///
/// ### Handling Key-Value Secret Strings in JSON
///
/// Reading key-value pairs from JSON back into a native Terraform map can be accomplished in Terraform 0.12 and later with the `jsondecode()` function:
Future<GetSecretVersionsResult> getSecretVersions(
  GetSecretVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecretVersions:getSecretVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionsResult.fromMap(result);
}
