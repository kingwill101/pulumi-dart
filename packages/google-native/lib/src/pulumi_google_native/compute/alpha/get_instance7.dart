import 'package:pulumi/pulumi.dart';
import 'get_instance_args7.dart';
import 'get_instance_result7.dart';

/// Returns the specified Instance resource.
Future<GetInstanceResult7> getInstance7(
  GetInstanceArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult7.fromMap(result);
}
