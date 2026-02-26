import 'package:pulumi/pulumi.dart';
import 'get_group_args2.dart';
import 'get_group_result2.dart';

/// Retrieves a `Group`.
Future<GetGroupResult2> getGroup2(
  GetGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult2.fromMap(result);
}
