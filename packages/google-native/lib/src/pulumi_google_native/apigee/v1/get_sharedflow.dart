import 'package:pulumi/pulumi.dart' hide Config;
import 'get_sharedflow_args.dart';
import 'get_sharedflow_result.dart';

/// Gets a shared flow by name, including a list of its revisions.
Future<GetSharedflowResult> getSharedflow(
  GetSharedflowArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSharedflow',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSharedflowResult.fromMap(result);
}
