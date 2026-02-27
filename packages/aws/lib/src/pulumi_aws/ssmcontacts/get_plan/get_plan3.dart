import 'package:pulumi/pulumi.dart';
import 'get_plan_args3.dart';
import 'get_plan_result3.dart';

/// Data source for managing a Plan of an AWS SSM Contact.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetPlanResult3> getPlan3(
  GetPlanArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmcontacts/getPlan:getPlan',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPlanResult3.fromMap(result);
}
