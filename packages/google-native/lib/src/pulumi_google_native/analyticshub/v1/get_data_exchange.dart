import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_exchange_args.dart';
import 'get_data_exchange_result.dart';

/// Gets the details of a data exchange.
Future<GetDataExchangeResult> getDataExchange(
  GetDataExchangeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1:getDataExchange',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeResult.fromMap(result);
}
