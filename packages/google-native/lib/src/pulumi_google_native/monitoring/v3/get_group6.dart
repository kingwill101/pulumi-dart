import 'package:pulumi/pulumi.dart' hide Config;
import 'get_group_args6.dart';
import 'get_group_result6.dart';

/// Gets a single group.
Future<GetGroupResult6> getGroup6(
  GetGroupArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult6.fromMap(result);
}
