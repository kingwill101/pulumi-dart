import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_vmmigration_v1alpha1_args.dart';
import 'get_group_vmmigration_v1alpha1_result.dart';

/// Gets details of a single Group.
Future<GetGroupVmmigrationV1alpha1Result> getGroupVmmigrationV1alpha1(
  GetGroupVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupVmmigrationV1alpha1Result.fromMap(result);
}
