import 'package:pulumi/pulumi.dart' hide Config;
import 'get_group_args8.dart';
import 'get_group_result8.dart';

/// Gets details of a single Group.
Future<GetGroupResult8> getGroup8(
  GetGroupArgs8 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult8.fromMap(result);
}
