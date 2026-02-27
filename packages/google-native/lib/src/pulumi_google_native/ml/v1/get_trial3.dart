import 'package:pulumi/pulumi.dart' hide Config;
import 'get_trial_args3.dart';
import 'get_trial_result3.dart';

/// Gets a trial.
Future<GetTrialResult3> getTrial3(
  GetTrialArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getTrial',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTrialResult3.fromMap(result);
}
