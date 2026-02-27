import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_project_args.dart';
import 'get_target_project_result.dart';

/// Gets details of a single TargetProject. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.
Future<GetTargetProjectResult> getTargetProject(
  GetTargetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getTargetProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetProjectResult.fromMap(result);
}
