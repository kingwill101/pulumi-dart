import 'package:pulumi/pulumi.dart' hide Config;
import 'get_data_exchange_args.dart';
import 'get_data_exchange_result.dart';

/// Gets the details of a data exchange.
Future<GetDataExchangeResult> getDataExchange(
  GetDataExchangeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1:getDataExchange',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeResult.fromMap(result);
}
