import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_billing_account_sink_args.dart';
import 'get_billing_account_sink_result.dart';

/// Gets a sink.
Future<GetBillingAccountSinkResult> getBillingAccountSink(
  GetBillingAccountSinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBillingAccountSink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountSinkResult.fromMap(result);
}
