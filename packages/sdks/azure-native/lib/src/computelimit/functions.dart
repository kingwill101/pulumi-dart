import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_guest_subscription_args.dart';
import 'get_guest_subscription_result.dart';
import 'get_shared_limit_args.dart';
import 'get_shared_limit_result.dart';

/// Gets the properties of a guest subscription.
///
/// Uses Azure REST API version 2025-08-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_computelimit_get_guest_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGuestSubscriptionResult> getGuestSubscription(
  GetGuestSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:computelimit:getGuestSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGuestSubscriptionResult.fromMap(result);
}

/// Gets the properties of a compute limit shared by the host subscription with its guest subscriptions.
///
/// Uses Azure REST API version 2025-08-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_computelimit_get_shared_limit_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedLimitResult> getSharedLimit(
  GetSharedLimitArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:computelimit:getSharedLimit',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedLimitResult.fromMap(result);
}
