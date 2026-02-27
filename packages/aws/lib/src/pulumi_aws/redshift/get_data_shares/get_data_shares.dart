import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_shares_args.dart';
import 'get_data_shares_result.dart';

/// Data source for managing AWS Redshift Data Shares.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetDataSharesResult> getDataShares(
  GetDataSharesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getDataShares:getDataShares',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataSharesResult.fromMap(result);
}
