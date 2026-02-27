import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_vmmigration_v1_args.dart';
import 'get_group_vmmigration_v1_result.dart';

/// Gets details of a single Group.
Future<GetGroupVmmigrationV1Result> getGroupVmmigrationV1(
  GetGroupVmmigrationV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupVmmigrationV1Result.fromMap(result);
}
