import 'package:pulumi/pulumi.dart';
import 'get_rate_based_mod_args.dart';
import 'get_rate_based_mod_result.dart';

/// `aws.wafregional.RateBasedRule` Retrieves a WAF Regional Rate Based Rule Resource Id.
Future<GetRateBasedModResult> getRateBasedMod(
  GetRateBasedModArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getRateBasedMod:getRateBasedMod',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRateBasedModResult.fromMap(result);
}
