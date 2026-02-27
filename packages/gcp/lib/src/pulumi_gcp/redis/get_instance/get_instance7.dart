import 'package:pulumi/pulumi.dart';
import 'get_instance_args7.dart';
import 'get_instance_result7.dart';

/// Get info about a Google Cloud Redis instance.
Future<GetInstanceResult7> getInstance7(
  GetInstanceArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:redis/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult7.fromMap(result);
}
