import 'package:pulumi/pulumi.dart' hide Config;
import 'get_custom_class_args.dart';
import 'get_custom_class_result.dart';

/// Get a custom class.
Future<GetCustomClassResult> getCustomClass(
  GetCustomClassArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:speech/v1:getCustomClass',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomClassResult.fromMap(result);
}
