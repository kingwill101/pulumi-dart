import 'package:pulumi/pulumi.dart';
import 'get_subscription_iam_policy_args.dart';
import 'get_subscription_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Pubsub subscription.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.pubsub.getSubscriptionIamPolicy({
/// subscription: subscription.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.pubsub.get_subscription_iam_policy(subscription=subscription["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.PubSub.GetSubscriptionIamPolicy.Invoke(new()
/// {
/// Subscription = subscription.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := pubsub.GetSubscriptionIamPolicy(ctx, &pubsub.GetSubscriptionIamPolicyArgs{
/// Subscription: subscription.Id,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.PubsubFunctions;
/// import com.pulumi.gcp.pubsub.inputs.GetSubscriptionIamPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var policy = PubsubFunctions.getSubscriptionIamPolicy(GetSubscriptionIamPolicyArgs.builder()
/// .subscription(subscription.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:pubsub:getSubscriptionIamPolicy
/// arguments:
/// subscription: ${subscription.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSubscriptionIamPolicyResult> getSubscriptionIamPolicy(
  GetSubscriptionIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getSubscriptionIamPolicy:getSubscriptionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionIamPolicyResult.fromMap(result);
}
