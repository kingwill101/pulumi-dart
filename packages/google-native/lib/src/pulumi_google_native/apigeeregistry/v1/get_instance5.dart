import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_args5.dart';
import 'get_instance_result5.dart';

/// Gets details of a single Instance.
Future<GetInstanceResult5> getInstance5(
  GetInstanceArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult5.fromMap(result);
}
