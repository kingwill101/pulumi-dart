import 'package:pulumi/pulumi.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';

/// Retrieves a `Group`.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}
