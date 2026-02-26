import 'package:pulumi/pulumi.dart';
import 'get_group_args7.dart';
import 'get_group_result7.dart';

/// Gets details of a single Group.
Future<GetGroupResult7> getGroup7(
  GetGroupArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult7.fromMap(result);
}
