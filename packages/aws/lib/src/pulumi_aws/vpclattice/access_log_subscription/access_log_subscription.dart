import 'package:pulumi/pulumi.dart';
import 'access_log_subscription_args.dart';

/// Resource for managing an AWS VPC Lattice Service Network or Service Access log subscription.
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
/// const example = new aws.vpclattice.AccessLogSubscription("example", {
/// resourceIdentifier: exampleAwsVpclatticeServiceNetwork.id,
/// destinationArn: bucket.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.AccessLogSubscription("example",
/// resource_identifier=example_aws_vpclattice_service_network["id"],
/// destination_arn=bucket["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.VpcLattice.AccessLogSubscription("example", new()
/// {
/// ResourceIdentifier = exampleAwsVpclatticeServiceNetwork.Id,
/// DestinationArn = bucket.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpclattice.NewAccessLogSubscription(ctx, "example", &vpclattice.AccessLogSubscriptionArgs{
/// ResourceIdentifier: pulumi.Any(exampleAwsVpclatticeServiceNetwork.Id),
/// DestinationArn:     pulumi.Any(bucket.Arn),
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
/// import com.pulumi.aws.vpclattice.AccessLogSubscription;
/// import com.pulumi.aws.vpclattice.AccessLogSubscriptionArgs;
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
/// var example = new AccessLogSubscription("example", AccessLogSubscriptionArgs.builder()
/// .resourceIdentifier(exampleAwsVpclatticeServiceNetwork.id())
/// .destinationArn(bucket.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:vpclattice:AccessLogSubscription
/// properties:
/// resourceIdentifier: ${exampleAwsVpclatticeServiceNetwork.id}
/// destinationArn: ${bucket.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Access Log Subscription using the access log subscription ID. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/accessLogSubscription:AccessLogSubscription example rft-8012925589
/// ```
class AccessLogSubscription extends CustomResource {
  /// Amazon Resource Name (ARN) of the access log subscription.
  late final Output<String> arn;

  /// Amazon Resource Name (ARN) of the log destination.
  late final Output<String> destinationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the service network or service.
  late final Output<String> resourceArn;

  /// The ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  ///
  /// The following arguments are optional:
  late final Output<String> resourceIdentifier;

  /// Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  late final Output<String> serviceNetworkLogType;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  AccessLogSubscription(
    String name, {
    AccessLogSubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/accessLogSubscription:AccessLogSubscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.destinationArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceArn = Output.createUnknown<String>();
    this.resourceIdentifier = Output.createUnknown<String>();
    this.serviceNetworkLogType = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
