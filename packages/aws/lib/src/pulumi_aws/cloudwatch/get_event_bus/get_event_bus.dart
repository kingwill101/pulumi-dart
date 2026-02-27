import 'package:pulumi/pulumi.dart';
import 'get_event_bus_args.dart';
import 'get_event_bus_result.dart';

/// This data source can be used to fetch information about a specific
/// EventBridge event bus. Use this data source to compute the ARN of
/// an event bus, given the name of the bus.
Future<GetEventBusResult> getEventBus(
  GetEventBusArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getEventBus:getEventBus',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEventBusResult.fromMap(result);
}
