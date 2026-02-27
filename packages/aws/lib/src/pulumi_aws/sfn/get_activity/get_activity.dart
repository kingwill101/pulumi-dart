import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_activity_args.dart';
import 'get_activity_result.dart';

/// Provides a Step Functions Activity data source
Future<GetActivityResult> getActivity(
  GetActivityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getActivity:getActivity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActivityResult.fromMap(result);
}
