import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_hierarchy_structure_args.dart';
import 'get_user_hierarchy_structure_result.dart';

/// Provides details about a specific Amazon Connect User Hierarchy Structure
Future<GetUserHierarchyStructureResult> getUserHierarchyStructure(
  GetUserHierarchyStructureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getUserHierarchyStructure:getUserHierarchyStructure',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserHierarchyStructureResult.fromMap(result);
}
