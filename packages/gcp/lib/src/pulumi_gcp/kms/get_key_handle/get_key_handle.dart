import 'package:pulumi/pulumi.dart';
import 'get_key_handle_args.dart';
import 'get_key_handle_result.dart';

/// Provides access to Google Cloud Platform KMS KeyHandle. A key handle is a Cloud KMS resource that helps you safely span the separation of duties to create new Cloud KMS keys for CMEK using Autokey.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/resource-hierarchy#key_handles)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyHandles).
Future<GetKeyHandleResult> getKeyHandle(
  GetKeyHandleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKeyHandle:getKeyHandle',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeyHandleResult.fromMap(result);
}
