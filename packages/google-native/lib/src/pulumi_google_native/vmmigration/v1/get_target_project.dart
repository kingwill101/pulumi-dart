import 'package:pulumi/pulumi.dart';
import 'get_target_project_args.dart';
import 'get_target_project_result.dart';

/// Gets details of a single TargetProject. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.
Future<GetTargetProjectResult> getTargetProject(
  GetTargetProjectArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getTargetProject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetProjectResult.fromMap(result);
}
