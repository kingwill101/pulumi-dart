import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_hierarchy_group_args.dart';
import 'get_user_hierarchy_group_result.dart';

/// Provides details about a specific Amazon Connect User Hierarchy Group.
///
/// ## Example Usage
///
/// By `name`
///
///
///
/// By `hierarchy_group_id`
Future<GetUserHierarchyGroupResult> getUserHierarchyGroup(
  GetUserHierarchyGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getUserHierarchyGroup:getUserHierarchyGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserHierarchyGroupResult.fromMap(result);
}
