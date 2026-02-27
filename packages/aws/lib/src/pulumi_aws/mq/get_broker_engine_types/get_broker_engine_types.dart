import 'package:pulumi/pulumi.dart';
import 'get_broker_engine_types_args.dart';
import 'get_broker_engine_types_result.dart';

/// Provides details about available MQ broker engine types. Use this data source to retrieve supported engine types and their versions for Amazon MQ brokers.
Future<GetBrokerEngineTypesResult> getBrokerEngineTypes(
  GetBrokerEngineTypesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mq/getBrokerEngineTypes:getBrokerEngineTypes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBrokerEngineTypesResult.fromMap(result);
}
