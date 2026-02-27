import 'package:pulumi/pulumi.dart';
import 'get_activity_args.dart';
import 'get_activity_result.dart';

/// Provides a Step Functions Activity data source
Future<GetActivityResult> getActivity(
  GetActivityArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getActivity:getActivity',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetActivityResult.fromMap(result);
}
