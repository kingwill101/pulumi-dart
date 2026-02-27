import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_migrationcenter_v1alpha1_args.dart';
import 'get_group_migrationcenter_v1alpha1_result.dart';

/// Gets the details of a group.
Future<GetGroupMigrationcenterV1alpha1Result> getGroupMigrationcenterV1alpha1(
  GetGroupMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupMigrationcenterV1alpha1Result.fromMap(result);
}
