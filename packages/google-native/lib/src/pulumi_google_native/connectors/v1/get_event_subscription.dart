import 'package:pulumi/pulumi.dart' hide Config;
import 'get_event_subscription_args.dart';
import 'get_event_subscription_result.dart';

/// Gets details of a single EventSubscription.
Future<GetEventSubscriptionResult> getEventSubscription(
  GetEventSubscriptionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getEventSubscription',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEventSubscriptionResult.fromMap(result);
}
