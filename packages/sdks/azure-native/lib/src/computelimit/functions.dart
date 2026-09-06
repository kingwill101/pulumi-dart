import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_guest_subscription_args.dart';
import 'get_guest_subscription_result.dart';
import 'get_shared_limit_args.dart';
import 'get_shared_limit_result.dart';

/// Gets the properties of a guest subscription.
///
/// Uses Azure REST API version 2025-08-15.
///
/// Other available API versions: 2026-03-20, 2026-04-30, 2026-06-01, 2026-07-01, 2026-07-31. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native computelimit [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetGuestSubscriptionResult> getGuestSubscriptionOutput(
  GetGuestSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:computelimit:getGuestSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGuestSubscriptionResult.fromMap);
}

/// Gets the properties of a compute limit shared by the host subscription with its guest subscriptions.
///
/// Uses Azure REST API version 2025-08-15.
///
/// Other available API versions: 2026-03-20, 2026-04-30, 2026-06-01, 2026-07-01, 2026-07-31. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native computelimit [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetSharedLimitResult> getSharedLimitOutput(
  GetSharedLimitArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:computelimit:getSharedLimit',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSharedLimitResult.fromMap);
}
