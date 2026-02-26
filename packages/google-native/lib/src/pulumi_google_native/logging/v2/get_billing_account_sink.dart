import 'package:pulumi/pulumi.dart';
import 'get_billing_account_sink_args.dart';
import 'get_billing_account_sink_result.dart';

/// Gets a sink.
Future<GetBillingAccountSinkResult> getBillingAccountSink(
  GetBillingAccountSinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBillingAccountSink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountSinkResult.fromMap(result);
}
