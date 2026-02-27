import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_exchange_analyticshub_v1beta1_args.dart';
import 'get_data_exchange_analyticshub_v1beta1_result.dart';

/// Gets the details of a data exchange.
Future<GetDataExchangeAnalyticshubV1beta1Result>
    getDataExchangeAnalyticshubV1beta1(
  GetDataExchangeAnalyticshubV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1beta1:getDataExchange',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeAnalyticshubV1beta1Result.fromMap(result);
}
