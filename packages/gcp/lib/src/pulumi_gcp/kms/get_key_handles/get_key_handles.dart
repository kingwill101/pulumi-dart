import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_handles_args.dart';
import 'get_key_handles_result.dart';

/// Provides access to Google Cloud Platform KMS KeyHandle. A key handle is a Cloud KMS resource that helps you safely span the separation of duties to create new Cloud KMS keys for CMEK using Autokey.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/resource-hierarchy#key_handles)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyHandles/list).
Future<GetKeyHandlesResult> getKeyHandles(
  GetKeyHandlesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKeyHandles:getKeyHandles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyHandlesResult.fromMap(result);
}
