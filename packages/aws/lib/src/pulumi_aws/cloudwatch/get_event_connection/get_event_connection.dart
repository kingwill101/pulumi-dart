import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_connection_args.dart';
import 'get_event_connection_result.dart';

/// Use this data source to retrieve information about an EventBridge connection.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
Future<GetEventConnectionResult> getEventConnection(
  GetEventConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getEventConnection:getEventConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventConnectionResult.fromMap(result);
}
