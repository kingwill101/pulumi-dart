import 'package:pulumi/pulumi.dart';
import 'get_broker_args.dart';
import 'get_broker_result.dart';

/// Provides details about an existing Amazon MQ broker. Use this data source to retrieve configuration and metadata for an Amazon MQ broker by ID or name.
Future<GetBrokerResult> getBroker(
  GetBrokerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mq/getBroker:getBroker',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBrokerResult.fromMap(result);
}
