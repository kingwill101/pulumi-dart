import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_project_args2.dart';
import 'get_target_project_result2.dart';

/// Gets details of a single TargetProject. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.
Future<GetTargetProjectResult2> getTargetProject2(
  GetTargetProjectArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getTargetProject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetProjectResult2.fromMap(result);
}
