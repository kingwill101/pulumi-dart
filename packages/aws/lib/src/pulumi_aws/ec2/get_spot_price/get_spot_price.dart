import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spot_price_args.dart';
import 'get_spot_price_result.dart';

/// Information about most recent Spot Price for a given EC2 instance.
Future<GetSpotPriceResult> getSpotPrice(
  GetSpotPriceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSpotPrice:getSpotPrice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpotPriceResult.fromMap(result);
}
