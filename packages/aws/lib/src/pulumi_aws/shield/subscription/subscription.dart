import 'package:pulumi/pulumi.dart';
import 'subscription_args.dart';

/// Resource for managing an AWS Shield Subscription.
///
/// > This resource creates a subscription to AWS Shield Advanced, which requires a 1 year subscription commitment with a monthly fee. Refer to the [AWS Shield Pricing](https://aws.amazon.com/shield/pricing/) page for more details.
///
/// > Destruction of this resource will set <span pulumi-lang-nodejs="`autoRenew`" pulumi-lang-dotnet="`AutoRenew`" pulumi-lang-go="`autoRenew`" pulumi-lang-python="`auto_renew`" pulumi-lang-yaml="`autoRenew`" pulumi-lang-java="`autoRenew`">`auto_renew`</span> to `DISABLED`. Automatic renewal can only be disabled during the last 30 days of a subscription. To unsubscribe outside of this window, you must contact AWS Support. Set <span pulumi-lang-nodejs="`skipDestroy`" pulumi-lang-dotnet="`SkipDestroy`" pulumi-lang-go="`skipDestroy`" pulumi-lang-python="`skip_destroy`" pulumi-lang-yaml="`skipDestroy`" pulumi-lang-java="`skipDestroy`">`skip_destroy`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to skip modifying the <span pulumi-lang-nodejs="`autoRenew`" pulumi-lang-dotnet="`AutoRenew`" pulumi-lang-go="`autoRenew`" pulumi-lang-python="`auto_renew`" pulumi-lang-yaml="`autoRenew`" pulumi-lang-java="`autoRenew`">`auto_renew`</span> argument during destruction.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.Shield.Subscription("example", new()
/// {
/// AutoRenew = "ENABLED",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/shield"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := shield.NewSubscription(ctx, "example", &shield.SubscriptionArgs{
/// AutoRenew: pulumi.String("ENABLED"),
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Subscription("example", SubscriptionArgs.builder()
/// .autoRenew("ENABLED")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:shield:Subscription
/// properties:
/// autoRenew: ENABLED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Shield Subscription using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:shield/subscription:Subscription example 123456789012
/// ```
class Subscription extends CustomResource {
  /// Toggle for automated renewal of the subscription. Valid values are `ENABLED` or `DISABLED`. Default is `ENABLED`.
  late final Output<String> autoRenew;

  /// Skip attempting to disable automated renewal upon destruction. If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the <span pulumi-lang-nodejs="`autoRenew`" pulumi-lang-dotnet="`AutoRenew`" pulumi-lang-go="`autoRenew`" pulumi-lang-python="`auto_renew`" pulumi-lang-yaml="`autoRenew`" pulumi-lang-java="`autoRenew`">`auto_renew`</span> value will be left as-is and the resource will simply be removed from state.
  late final Output<bool?> skipDestroy;

  Subscription(
    String name, {
    SubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:shield/subscription:Subscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoRenew = Output.createUnknown<String>();
    this.skipDestroy = Output.createUnknown<bool?>();
  }
}
