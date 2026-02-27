import 'package:pulumi/pulumi.dart' hide Config;
import 'get_group_args3.dart';
import 'get_group_result3.dart';

/// Get a group.
Future<GetGroupResult3> getGroup3(
  GetGroupArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaseappdistribution/v1:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult3.fromMap(result);
}
