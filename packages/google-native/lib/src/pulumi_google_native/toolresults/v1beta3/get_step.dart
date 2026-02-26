import 'package:pulumi/pulumi.dart';
import 'get_step_args.dart';
import 'get_step_result.dart';

/// Gets a Step. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Step does not exist
Future<GetStepResult> getStep(
  GetStepArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getStep',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStepResult.fromMap(result);
}
