import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_billing_account_exclusion_args.dart';
import 'get_billing_account_exclusion_result.dart';

/// Gets the description of an exclusion in the _Default sink.
Future<GetBillingAccountExclusionResult> getBillingAccountExclusion(
  GetBillingAccountExclusionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBillingAccountExclusion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountExclusionResult.fromMap(result);
}
