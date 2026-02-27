import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_migrationcenter_v1_args.dart';
import 'get_group_migrationcenter_v1_result.dart';

/// Gets the details of a group.
Future<GetGroupMigrationcenterV1Result> getGroupMigrationcenterV1(
  GetGroupMigrationcenterV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupMigrationcenterV1Result.fromMap(result);
}
