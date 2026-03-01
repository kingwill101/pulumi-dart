import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_args.dart';

/// Resource for managing an AWS Shield Subscription.
///
/// > This resource creates a subscription to AWS Shield Advanced, which requires a 1 year subscription commitment with a monthly fee. Refer to the [AWS Shield Pricing](https://aws.amazon.com/shield/pricing/) page for more details.
///
/// > Destruction of this resource will set `auto_renew` to `DISABLED`. Automatic renewal can only be disabled during the last 30 days of a subscription. To unsubscribe outside of this window, you must contact AWS Support. Set `skip_destroy` to `true` to skip modifying the `auto_renew` argument during destruction.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.shield.Subscription("example", {autoRenew: "ENABLED"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.shield.Subscription("example", auto_renew="ENABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Shield.Subscription("example", new()
///     {
///         AutoRenew = "ENABLED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/shield"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := shield.NewSubscription(ctx, "example", &shield.SubscriptionArgs{
/// 			AutoRenew: pulumi.String("ENABLED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.shield.Subscription;
/// import com.pulumi.aws.shield.SubscriptionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Subscription("example", SubscriptionArgs.builder()
///             .autoRenew("ENABLED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:shield:Subscription
///     properties:
///       autoRenew: ENABLED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Shield Subscription using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:shield/subscription:Subscription example 123456789012
/// ```
class Subscription extends pulumi.CustomResource {
  /// Toggle for automated renewal of the subscription. Valid values are `ENABLED` or `DISABLED`. Default is `ENABLED`.
  late final pulumi.Output<String> autoRenew;

  /// Skip attempting to disable automated renewal upon destruction. If set to `true`, the `auto_renew` value will be left as-is and the resource will simply be removed from state.
  late final pulumi.Output<bool?> skipDestroy;

  /// Creates a new [Subscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscription]. {@macro pulumi_shield_subscription_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:shield/subscription:Subscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.autoRenew = registerOutput<String>('autoRenew');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
  }
}
