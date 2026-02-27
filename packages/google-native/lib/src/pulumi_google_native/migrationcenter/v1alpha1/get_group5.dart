import 'package:pulumi/pulumi.dart' hide Config;
import 'get_group_args5.dart';
import 'get_group_result5.dart';

/// Gets the details of a group.
Future<GetGroupResult5> getGroup5(
  GetGroupArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult5.fromMap(result);
}
