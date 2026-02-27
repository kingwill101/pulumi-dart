import 'package:pulumi/pulumi.dart';
import 'get_event_buses_args.dart';
import 'get_event_buses_result.dart';

/// Data source for managing an AWS EventBridge Event Buses.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetEventBusesResult> getEventBuses(
  GetEventBusesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getEventBuses:getEventBuses',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEventBusesResult.fromMap(result);
}
