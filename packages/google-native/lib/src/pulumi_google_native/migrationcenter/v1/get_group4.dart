import 'package:pulumi/pulumi.dart' hide Config;
import 'get_group_args4.dart';
import 'get_group_result4.dart';

/// Gets the details of a group.
Future<GetGroupResult4> getGroup4(
  GetGroupArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult4.fromMap(result);
}
