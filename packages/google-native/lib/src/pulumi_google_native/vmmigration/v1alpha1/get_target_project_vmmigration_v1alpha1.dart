import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_project_vmmigration_v1alpha1_args.dart';
import 'get_target_project_vmmigration_v1alpha1_result.dart';

/// Gets details of a single TargetProject. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.
Future<GetTargetProjectVmmigrationV1alpha1Result>
    getTargetProjectVmmigrationV1alpha1(
  GetTargetProjectVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getTargetProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetProjectVmmigrationV1alpha1Result.fromMap(result);
}
