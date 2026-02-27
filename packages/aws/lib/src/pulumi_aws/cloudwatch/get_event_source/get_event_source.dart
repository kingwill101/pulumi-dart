import 'package:pulumi/pulumi.dart';
import 'get_event_source_args.dart';
import 'get_event_source_result.dart';

/// Use this data source to get information about an EventBridge Partner Event Source. This data source will only return one partner event source. An error will be returned if multiple sources match the same name prefix.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
Future<GetEventSourceResult> getEventSource(
  GetEventSourceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getEventSource:getEventSource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEventSourceResult.fromMap(result);
}
