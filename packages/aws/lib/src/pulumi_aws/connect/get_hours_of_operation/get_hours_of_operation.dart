import 'package:pulumi/pulumi.dart';
import 'get_hours_of_operation_args.dart';
import 'get_hours_of_operation_result.dart';

/// Provides details about a specific Amazon Connect Hours of Operation.
///
/// ## Example Usage
///
/// By `name`
///
///
///
/// By `hours_of_operation_id`
Future<GetHoursOfOperationResult> getHoursOfOperation(
  GetHoursOfOperationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getHoursOfOperation:getHoursOfOperation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHoursOfOperationResult.fromMap(result);
}
