import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_version_args.dart';
import 'get_secret_version_result.dart';

/// Retrieve information about a Secrets Manager secret version, including its secret value. To retrieve secret metadata, see the `aws.secretsmanager.Secret` data source.
///
/// ## Example Usage
///
/// ### Retrieve Current Secret Version
///
/// By default, this data sources retrieves information based on the `AWSCURRENT` staging label.
///
///
///
/// ### Retrieve Specific Secret Version
///
///
///
/// ### Handling Key-Value Secret Strings in JSON
///
/// Reading key-value pairs from JSON back into a native map
Future<GetSecretVersionResult> getSecretVersion(
  GetSecretVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecretVersion:getSecretVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionResult.fromMap(result);
}
