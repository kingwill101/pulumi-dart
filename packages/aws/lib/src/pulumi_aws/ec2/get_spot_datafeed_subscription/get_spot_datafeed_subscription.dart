import 'package:pulumi/pulumi.dart';
import 'get_spot_datafeed_subscription_args.dart';
import 'get_spot_datafeed_subscription_result.dart';

/// > There is only a single spot data feed subscription per account.
///
/// Data source for accessing an AWS EC2 (Elastic Compute Cloud) spot data feed subscription.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = aws.ec2.getSpotDatafeedSubscription({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.get_spot_datafeed_subscription()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Aws.Ec2.GetSpotDatafeedSubscription.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.LookupSpotDatafeedSubscription(ctx, &ec2.LookupSpotDatafeedSubscriptionArgs{}, nil)
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSpotDatafeedSubscriptionArgs;
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
/// final var default = Ec2Functions.getSpotDatafeedSubscription(GetSpotDatafeedSubscriptionArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: aws:ec2:getSpotDatafeedSubscription
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSpotDatafeedSubscriptionResult> getSpotDatafeedSubscription(
  GetSpotDatafeedSubscriptionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSpotDatafeedSubscription:getSpotDatafeedSubscription',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSpotDatafeedSubscriptionResult.fromMap(result);
}
