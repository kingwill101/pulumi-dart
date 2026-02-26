import 'package:pulumi/pulumi.dart';
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';

/// Get information about a Google Cloud Pub/Sub Subscription. For more information see
/// the [official documentation](https://cloud.google.com/pubsub/docs/)
/// and [API](https://cloud.google.com/pubsub/docs/apis).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_pubsub_subscription = gcp.pubsub.getSubscription({
/// name: "my-pubsub-subscription",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_pubsub_subscription = gcp.pubsub.get_subscription(name="my-pubsub-subscription")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_pubsub_subscription = Gcp.PubSub.GetSubscription.Invoke(new()
/// {
/// Name = "my-pubsub-subscription",
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
/// _, err := pubsub.LookupSubscription(ctx, &pubsub.LookupSubscriptionArgs{
/// Name: "my-pubsub-subscription",
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
/// import com.pulumi.gcp.pubsub.inputs.GetSubscriptionArgs;
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
/// final var my-pubsub-subscription = PubsubFunctions.getSubscription(GetSubscriptionArgs.builder()
/// .name("my-pubsub-subscription")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-pubsub-subscription:
/// fn::invoke:
/// function: gcp:pubsub:getSubscription
/// arguments:
/// name: my-pubsub-subscription
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getSubscription:getSubscription',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}
