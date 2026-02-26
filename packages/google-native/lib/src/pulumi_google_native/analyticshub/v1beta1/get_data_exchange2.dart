import 'package:pulumi/pulumi.dart';
import 'get_data_exchange_args2.dart';
import 'get_data_exchange_result2.dart';

/// Gets the details of a data exchange.
Future<GetDataExchangeResult2> getDataExchange2(
  GetDataExchangeArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1beta1:getDataExchange',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeResult2.fromMap(result);
}
