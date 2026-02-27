import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_rotation_args.dart';
import 'get_secret_rotation_result.dart';

/// Retrieve information about a Secrets Manager secret rotation. To retrieve secret metadata, see the `aws.secretsmanager.Secret` data source. To retrieve a secret value, see the `aws.secretsmanager.SecretVersion` data source.
///
/// ## Example Usage
///
/// ### Retrieve Secret Rotation Configuration
Future<GetSecretRotationResult> getSecretRotation(
  GetSecretRotationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecretRotation:getSecretRotation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretRotationResult.fromMap(result);
}
