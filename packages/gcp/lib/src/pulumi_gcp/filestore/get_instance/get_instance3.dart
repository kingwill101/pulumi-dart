import 'package:pulumi/pulumi.dart';
import 'get_instance_args3.dart';
import 'get_instance_result3.dart';

/// Get info about a Google Cloud Filestore instance.
Future<GetInstanceResult3> getInstance3(
  GetInstanceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:filestore/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult3.fromMap(result);
}
