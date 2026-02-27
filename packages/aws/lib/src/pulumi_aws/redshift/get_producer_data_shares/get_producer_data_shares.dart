import 'package:pulumi/pulumi.dart';
import 'get_producer_data_shares_args.dart';
import 'get_producer_data_shares_result.dart';

/// Data source for managing AWS Redshift Producer Data Shares.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetProducerDataSharesResult> getProducerDataShares(
  GetProducerDataSharesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getProducerDataShares:getProducerDataShares',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProducerDataSharesResult.fromMap(result);
}
