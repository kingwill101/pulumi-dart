import 'package:pulumi/pulumi.dart';
import 'get_spot_price_args.dart';
import 'get_spot_price_result.dart';

/// Information about most recent Spot Price for a given EC2 instance.
Future<GetSpotPriceResult> getSpotPrice(
  GetSpotPriceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSpotPrice:getSpotPrice',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSpotPriceResult.fromMap(result);
}
