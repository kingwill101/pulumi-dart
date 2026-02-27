import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_filestore_args.dart';
import 'get_instance_filestore_result.dart';

/// Get info about a Google Cloud Filestore instance.
Future<GetInstanceFilestoreResult> getInstanceFilestore(
  GetInstanceFilestoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:filestore/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceFilestoreResult.fromMap(result);
}
