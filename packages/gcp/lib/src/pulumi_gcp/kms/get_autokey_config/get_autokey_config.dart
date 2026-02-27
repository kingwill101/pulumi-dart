import 'package:pulumi/pulumi.dart';
import 'get_autokey_config_args.dart';
import 'get_autokey_config_result.dart';

/// Provides access to Google Cloud Platform KMS AutokeyConfig. A AutokeyConfig is a Cloud KMS resource that helps you safely span the separation of duties to create new Cloud KMS keys for CMEK using Autokey.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/reference/rest/v1/folders)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyHandles).
Future<GetAutokeyConfigResult> getAutokeyConfig(
  GetAutokeyConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getAutokeyConfig:getAutokeyConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAutokeyConfigResult.fromMap(result);
}
