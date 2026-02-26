import 'package:pulumi/pulumi.dart';
import 'get_trial_args2.dart';
import 'get_trial_result2.dart';

/// Gets a Trial.
Future<GetTrialResult2> getTrial2(
  GetTrialArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTrial',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTrialResult2.fromMap(result);
}
